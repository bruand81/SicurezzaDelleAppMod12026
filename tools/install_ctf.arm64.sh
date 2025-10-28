# set -e

# Generic
apt -y autoremove
apt -y install wget
echo "wireshark-common wireshark-common/install-setuid boolean true" | debconf-set-selections
DEBIAN_FRONTEND=noninteractive apt install -y curl php python3 python3-pip git binwalk gimp wireshark tshark ht ltrace gdb patchelf elfutils ruby-dev libssl-dev
python3 -m pip install pyshark pwntools ropper pycryptodome mtp --break-system-packages
gem install one_gadget seccomp-tools
mkdir -p /opt/ctf_tools


# Install JDK 21
echo "Installing OpenJDK 21..."
apt install -y openjdk-21-jdk


# Install Visual Studio Code
echo "Installing Visual Studio Code..."
apt -y install gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code


# Install Ngrok
echo "Installing Ngrok..."
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | tee /etc/apt/sources.list.d/ngrok.list \
  && apt update \
  && apt install ngrok


# Install ca-certificates
echo "Installing ca-certificates..."
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings



# Install JohnTheRipper
echo "Installing JohnTheRipper..."
git clone https://github.com/openwall/john -b bleeding-jumbo /opt/ctf_tools/john
(cd /opt/ctf_tools/john/src && ./configure && make -s clean && make -sj${PARALLEL_BUILDS})


# Install Postman
echo "Installing Postman..."
wget -O /opt/ctf_tools/postman.tar.gz https://dl.pstmn.io/download/latest/linux_64
(cd /opt/ctf_tools && tar -xf postman.tar.gz)
rm /opt/ctf_tools/postman.tar.gz


# Install pwndbg
echo "Installing pwndbg..."
git clone https://github.com/pwndbg/pwndbg /opt/ctf_tools/pwndbg
(cd /opt/ctf_tools/pwndbg && ./setup.sh)


# Install Ghidra
echo "Installing Ghidra..."
wget -O /opt/ctf_tools/ghidra.zip https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.2.1_build/ghidra_11.2.1_PUBLIC_20241105.zip
(cd /opt/ctf_tools && unzip ghidra.zip)
rm /opt/ctf_tools/ghidra.zip

# Install Binary Ninja
echo "Installing Binary Ninja..."
wget -O /opt/ctf_tools/binaryninja.zip https://cdn.binary.ninja/installers/binaryninja_free_linux.zip
(cd /opt/ctf_tools && unzip binaryninja.zip)
rm /opt/ctf_tools/binaryninja.zip

# Fix capstone
echo "Fixing capstone"
python3 -m pip install capstone==5.0.3 --break-system-packages