apt-get update
apt-get -y upgrade
apt-get install -y nginx
apt-get install -y openssl
openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=School21/CN=kgale" \
	-newkey rsa:2048 -keyout /etc/ssl/private/key.pem -out /etc/ssl/certs/cert.pem;
rm -rf /var/www/html/*