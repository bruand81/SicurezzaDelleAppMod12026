set -e

# Generic
apt autoremove -y
apt-get install wget -y
echo "wireshark-common wireshark-common/install-setuid boolean true" | debconf-set-selections
DEBIAN_FRONTEND=noninteractive apt install -y curl php python3 python3-pip git binwalk gimp wireshark tshark ht ltrace gdb patchelf elfutils ruby-dev libssl-dev
python3 -m pip install pyshark pwntools ropper pycryptodome mtp --break-system-packages
gem install one_gadget seccomp-tools
mkdir -p $HOME/tools


# Install JDK 25
wget -O /opt/jdk-25_linux-x64_bin.deb https://download.oracle.com/java/25/latest/jdk-25_linux-x64_bin.deb
(cd /opt && dpkg -i jdk-25_linux-x64_bin.deb)
rm /opt/jdk-25_linux-x64_bin.deb


# Install Visual Studio Code
apt-get install gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code


# Install Ngrok
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | tee /etc/apt/sources.list.d/ngrok.list \
  && apt update \
  && apt install ngrok


# Install ca-certificates
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings


# Install JohnTheRipper
git clone https://github.com/openwall/john -b bleeding-jumbo $HOME/tools/john
(cd $HOME/tools/john/src && ./configure && make -s clean && make -sj5)

# Install Postman
wget -O $HOME/tools/postman.tar.gz https://dl.pstmn.io/download/latest/linux_64
(cd $HOME/tools && tar -xf postman.tar.gz)
rm $HOME/tools/postman.tar.gz


# Install pwndbg
git clone https://github.com/pwndbg/pwndbg $HOME/tools/pwndbg
(cd $HOME/tools/pwndbg && ./setup.sh)


# Install Ghidra
wget -O $HOME/tools/ghidra.zip https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.2.1_build/ghidra_11.2.1_PUBLIC_20241105.zip
(cd $HOME/tools && unzip ghidra.zip)
rm $HOME/tools/ghidra.zip


# Install Binary Ninja
wget -O $HOME/tools/binaryninja.zip https://cdn.binary.ninja/installers/binaryninja_free_linux.zip
(cd $HOME/tools && unzip binaryninja.zip)
rm $HOME/tools/binaryninja.zip

# Fix capstone
python3 -m pip install capstone==5.0.3 --break-system-packages