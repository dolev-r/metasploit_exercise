# This is info about how to create the first wev server challenge.
apt update
# in the apache2 installation you need to inset the timezone.
apt install -y net-tools apache2 php

# create the ssh keys
openssl req -x509 -newkey rsa:4096 -nodes -out ssl_cert.crt -keyout ssl_key.key -subj "/C=US/ST=Utah/L=Lehi/O=Bamba corp./OU=IT/CN=bamba.com" -days 1000

# inside /etc/apache2/apache2.conf add this to the end of the file.

LoadModule ssl_module modules/mod_ssl.so

<VirtualHost *:443>
    ServerName www.example.com
    SSLEngine on
    SSLCertificateFile "/home/ssl_cert.crt"
    SSLCertificateKeyFile "/home/ssl_key.key"
</VirtualHost>

# in the command line:
a2enmod ssl
