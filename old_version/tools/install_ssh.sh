mkdir /var/run/sshd

service ssh start
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
bash -c 'install -m755 <(printf "#!/bin/sh\nexit 0") /usr/sbin/policy-rc.d'
# Con sed
sed -i 's/^#ListenAddress/ListenAddress/g' /etc/ssh/sshd_config
sed -i 's/^#\(HostKey .*ssh_host_.*_key\)/\1/g' /etc/ssh/sshd_config

sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

echo 'export NOTVISIBLE="in users profile"' >> ~/.bashrc
echo "export VISIBLE=now" >> /etc/profile

RUNLEVEL=1 dpkg-reconfigure openssh-server
ssh-keygen -A -v
update-rc.d ssh defaults

# Metodo più sicuro con visudo
echo '%sudo ALL=(ALL:ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo