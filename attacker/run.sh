container_name=attacker_$1

docker run --rm -idt --name $container_name ubuntu /bin/bash
docker cp ./installations.sh $container_name:/home/installations.sh
docker exec -it $container_name sh /home/installations.sh
