container_name=libssh_vulnerable_$1

docker run --rm -idt --name $container_name vulhub/libssh:0.8.1
# the installations should hold something that creates an ssh user
# docker cp ./installations.sh $container_name:/home/installations.sh
# docker exec -it $container_name sh /home/installations.sh


