cd /home/file_server
apt update
apt-get install -y build-essential checkinstall 
apt install -y tar
# pay attension here there is user input of the time zone.
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev 
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar -xvf Python-3.6.0.tgz  
cd Python-3.6.0
./configure
make
