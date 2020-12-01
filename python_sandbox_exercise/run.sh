# this will create the python sanbox container.

container_name=python_sandbox_$1

docker run --rm -idt --name container_name ubuntu /bin/bash

# more requiered installations.
docker cp ./installations.sh $container_name:/home/installations.sh
docker exec -it $container_name sh /home/installations.sh
# delete installations.sh

# upload the website.

