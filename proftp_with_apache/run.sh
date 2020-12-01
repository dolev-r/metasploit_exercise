# exploit is at https://github.com/t0kx/exploit-CVE-2015-3306.git

container_name=proftp_with_apache_$1

docker build -t proftpd/cve-2015-3306 .
docker run --rm -idt --name container_name proftpd/cve-2015-3306

# more requiered installations - every thing is in the Dockerfile.
# docker cp ./installations.sh $container_name:/home/installations.sh
# docker exec -it $container_name sh /home/installations.sh
# delete installations.sh

# upload the website.

