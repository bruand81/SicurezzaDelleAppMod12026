apt install -y libreadline-dev libbz2-dev libsqlite3-dev libssl-dev wget build-essential curl zlib1g-dev libssl-dev gdb
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz -O /tmp/Python-2.7.18.tgz
cd /tmp
tar zxf Python-2.7.18.tgz
cd Python-2.7.18
./configure --prefix=/usr/local --enable-optimizations
make -j${PARALLEL_BUILDS}
make install
curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py