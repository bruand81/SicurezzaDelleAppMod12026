FROM debian:trixie AS ctf_ssh

USER root

RUN apt update
RUN apt upgrade -y
RUN apt -y install openssh-server neovim sudo

COPY tools/install_ssh.sh /root/install_ssh.sh

RUN /bin/bash /root/install_ssh.sh && rm /root/install_ssh.sh

FROM ctf_ssh AS ctf_tools

ARG TARGETARCH=amd64

USER root

COPY tools/install_ctf.amd64.sh /root/install_ctf.amd64.sh
COPY tools/install_ctf.arm64.sh /root/install_ctf.arm64.sh

RUN mkdir /opt/ctf_tools
RUN chmod 755 /opt/ctf_tools

RUN if [ "$TARGETARCH" = "amd64" ]; then \
        /bin/bash /root/install_ctf.amd64.sh && rm /root/install_ctf.*.sh; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        /bin/bash /root/install_ctf.arm64.sh && rm /root/install_ctf.*.sh; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

FROM ctf_tools AS ctf_phoenix

ARG TARGETARCH=amd64

USER root

RUN wget https://github.com/ExploitEducation/Phoenix/releases/download/v1.0.0-alpha-3/exploit-education-phoenix_1.0.0-_amd64.deb -O /root/phoenix_amd64.deb;

RUN wget https://github.com/ExploitEducation/Phoenix/releases/download/v1.0.0-alpha-3/exploit-education-phoenix_1.0.0_arm64.deb -O /root/phoenix_arm64.deb;

COPY tools/postinst_amd64.sh /root/postinst_amd64.sh
COPY tools/postinst_arm64.sh /root/postinst_arm64.sh

RUN if [ "$TARGETARCH" = "amd64" ]; then \
        mv /root/phoenix_amd64.deb /root/phoenix.deb; \
        mv /root/phoenix_arm64.deb /root/phoenix_oth.deb; \
        cp /root/postinst_arm64.sh /root/postinst.sh; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        mv /root/phoenix_arm64.deb /root/phoenix.deb; \
        mv /root/phoenix_amd64.deb /root/phoenix_oth.deb; \
        cp /root/postinst_amd64.sh /root/postinst.sh; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

RUN dpkg -i /root/phoenix.deb && rm /root/phoenix.deb
RUN dpkg-deb -R /root/phoenix_oth.deb /root/tmp/
RUN cp -R /root/tmp/opt/phoenix/* /opt/phoenix/
RUN rm -rf /root/tmp/
RUN rm /root/phoenix_oth.deb
RUN rm /root/postinst*

RUN apt autoremove -y

FROM ctf_phoenix AS ctf_python

USER root

RUN apt install -y python-is-python3

FROM ctf_phoenix AS ctf_final

ARG CUID=1001
ARG CGID=1001
ARG SUID=1002
ARG SGID=1002
ENV CUID=${CUID}
ENV CGID=${CGID}
ENV SUID=${SUID}
ENV SGID=${SGID}
ENV NAME=toor
ENV PASS=toor
ENV SNAME=user
ENV SPASS=user

USER root

RUN chown -R root:root /home/
RUN chmod 755 /home/
RUN groupadd -g ${CGID} ${NAME}
RUN groupadd -g ${SGID} ${SNAME}
RUN useradd -d /home/${SNAME} -m -s /bin/bash -u ${SUID} -g ${SGID} -p $(echo "$SPASS" | openssl passwd -1 -stdin) ${SNAME}

RUN useradd -d /home/${NAME} -m -s /bin/bash -u ${CUID} -g ${CGID}  -G sudo,${SNAME} -p $(echo "$PASS" | openssl passwd -1 -stdin) ${NAME}
RUN mkdir /home/${SNAME}/ctf
RUN chown -R ${SNAME}:${SNAME} /home/${SNAME}/ctf
RUN mkdir /opt/phoenix-src/
COPY src/* /opt/phoenix-src/
RUN chmod 755 /opt/phoenix-src/
USER ${NAME}
RUN ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519

USER ${SNAME}
RUN ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519

# Reset user to root
USER root

COPY tools/01-disable-aslr.conf /etc/sysctl.d/01-disable-aslr.conf

EXPOSE 22

COPY tools/entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

# CMD ["/usr/sbin/sshd", "-D"]