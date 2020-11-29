docker build --tag $1_tag .
docker run -i -t --detach --name $1 $1_tag
docker cp `pwd`/enable_ssh.py $1:/home/enable_ssh.py
docker cp `pwd`/ssh_commands.txt $1:/home/ssh_commands.txt
docker exec $1 sh -c "python3 /home/enable_ssh.py"
