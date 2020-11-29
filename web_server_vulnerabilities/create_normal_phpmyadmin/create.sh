docker pull mysql:8.0.1
docker run --name my-own-mysql -e MYSQL_ROOT_PASSWORD=mypass123 -d mysql:8.0.1
docker pull phpmyadmin/phpmyadmin:latest
docker run --name my-own-phpmyadmin -d --link my-own-mysql:db phpmyadmin/phpmyadmin
