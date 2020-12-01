# This are the commands to be preformed on the attacker 
# add attacker user
cd /home/attacker

apt update
apt install -y python2 python3 python3-pip nmap xxd net-tools gcc wget curl iputils-ping gnupg vim php openssh-server tcpdump netcat apache2 tree
service apache2 start
service ssh start
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
python2 get-pip.py
python2 -m pip install requests

pip3 install requests flask flask_cors

# Cheatsheets
mkdir Cheatsheets
cd Cheatsheets
	# something about how to use python request, with https.
	# python3; import requests; help(requests)

	# something about apache web application
	mkdir apache2
	cd apache2
	wget -E -H -k -K -p "https://httpd.apache.org/docs/trunk/getting-started.html"
	cd ..

	# something about how flask works


	# Metasploit
	mkdir metasploit
	cd metasploit
	wget -E -H -k -K -p "https://www.tutorialspoint.com/metasploit/metasploit_quick_guide.htm"
	wget -E -H -k -K -p"https://www.offensive-security.com/metasploit-unleashed/msfconsole-commands/"
	cd ..

	# Meterpeter from php shell.
	mkdir meterpeter_from_php_shell
	cd meterpeter_from_php_shell
	wget -E -H -k -K -p "https://www.hacking.reviews/2017/02/webshell-to-meterpreter.html?m=1"
	cd ..
	
	# metasploit meterpeter


	# Nmap
	mkdir nmap
	cd nmap
	wget -E -H -k -K -p "https://www.stationx.net/nmap-cheat-sheet/"
	cd ..
	

	# msfvenum
	mkdir msfvenum
	cd msfvenum
	wget -E -H -k -K -p "https://redteamtutorials.com/2018/10/24/msfvenom-cheatsheet/"
	cd ..

	# hashcat


	# Hydra
	mkdir hydra
	cd hydra
	wget -E -H -k -K -p "https://redteamtutorials.com/2018/10/25/hydra-brute-force-techniques/"
	cd ..
	

	# Gobuster - brute force web directories
	#https://redteamtutorials.com/2018/11/19/gobuster-cheatsheet/




# Other tools:
cd /home/attacker
mkdir tools
cd tools

# the php webshell
git clone https://github.com/WhiteWinterWolf/wwwolf-php-webshell.git

# metasploit - 
mkdir metasploit_intsaller
cd metasploit_intsaller
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
./msfinstall
cd /home/attacker

# hashcat
apt install hashcat

# Hydra brute forcing protocols
apt-get -y install hydra hydra-gtk

# web tools from github
#sqlmap
#urlfuzzer
#joomscan

# Wpscan 
apt install curl git libcurl4-openssl-dev make zlib1g-dev gawk g++ gcc libreadline6-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config ruby ruby-bundler ruby-dev -y
gem install wpscan

# Word lists

# Beef installation:
cd /home/attacker
git clone https://github.com/beefproject/beef.git
cd beef

apt update
apt-get clean && apt-get update && apt-get install -y locales
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
locale-gen en_US.UTF-8

# inside ./install: replace all the sudo with nothing.
python3 -c "x = open('./install', 'r'); data = x.read(); x.close(); open('./install', 'w').write(data.replace('sudo ', ''))"

run ./install
# should set the area to america - New York.
# should change the default username and password
./beef

# CVE:
cd /home/attacker/
mkdir exploits
cd exploits

	# The ssh vulnerability 
	pip3 install paramiko==2.0.8
	git clone https://github.com/blacknbunny/CVE-2018-10933.git

	# The ProFtpd vulnerability:
	git clone https://github.com/t0kx/exploit-CVE-2015-3306.git
	rm -rf exploit-CVE-2015-3306/Dockerfile

	git clone https://github.com/thegingerninja/ProFTPd_1_3_5_mod_copy_exploit.git
	"https://www.exploit-db.com/exploits/36803"

	# in metasploit
	# set payload cmd/unix/reverse_python


	# The phpmail vulnerability


	# The sambacry exploit - maybe change a little.
	git clone https://github.com/opsxcq/exploit-CVE-2017-7494.git


	# The zip slip vulnerability.
	git clone https://github.com/snyk/zip-slip-vulnerability.git
	


