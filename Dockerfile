FROM debian:trixie AS ctf_ssh

RUN apt update && apt upgrade -y

COPY tools/install_ssh.sh /root/install_ssh.sh

RUN /bin/sh /root/install_ssh.sh && rm /root/install_ssh.sh

FROM ctf_ssh AS ctf_tools

ARG TARGETARCH

COPY tools/install_ctf.amd64.sh /root/install_ctf.amd64.sh
COPY tools/install_ctf.arm64.sh /root/install_ctf.arm64.sh

RUN if [ "$TARGETARCH" = "amd64" ]; then \
        /bin/sh /root/install_ctf.amd64.sh && rm /root/install_ctf.*.sh; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        /bin/sh /root/install_ctf.arm64.sh && rm /root/install_ctf.*.sh; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

FROM ctf_tools AS ctf_phoenix

ARG TARGETARCH

RUN if [ "$TARGETARCH" = "amd64" ]; then \
        wget https://github.com/ExploitEducation/Phoenix/releases/download/v1.0.0-alpha-3/exploit-education-phoenix_1.0.0-_amd64.deb -O /root/phoenix.deb; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        wget https://github.com/ExploitEducation/Phoenix/releases/download/v1.0.0-alpha-3/exploit-education-phoenix_1.0.0_arm64.deb -O /root/phoenix.deb; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

RUN dpkg -i /root/phoenix.deb && rm /root/phoenix.deb

RUN apt autoremove -y

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

RUN groupadd -g ${CGID} ${NAME}
RUN groupadd -g ${SGID} ${SNAME}
RUN useradd -d /home/${SNAME} -m -s /bin/bash -u ${SUID} -g ${SGID} -p $(echo "$SPASS" | openssl passwd -1 -stdin) ${SNAME}
RUN useradd -d /home/${NAME} -m -s /bin/bash -u ${CUID} -g ${CGID}  -G sudo,${SNAME} -p $(echo "$PASS" | openssl passwd -1 -stdin) ${NAME}
RUN mkdir /home/${SNAME}/ctf
RUN chown -R ${SNAME}:${SNAME} /home/${SNAME}/ctf

USER ${NAME}
RUN ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519

USER ${SNAME}
RUN ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519

# Reset user to root
USER root

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]