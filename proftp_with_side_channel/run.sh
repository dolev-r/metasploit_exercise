# exploit is at https://github.com/t0kx/exploit-CVE-2015-3306.git

container_name=libssh_vulnerable_$1

docker build -t proftpd/cve-2015-3306 .
docker run --rm -idt --name container_name proftpd/cve-2015-3306
docker cp ./installations.sh $container_name:/home/installations.sh
docker exec -it $container_name sh /home/installations.sh
# delete installations.sh

