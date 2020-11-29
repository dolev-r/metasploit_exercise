docker cp `pwd`/web_server_operations.py $1:/home/web_server_operations.py
docker cp `pwd`/web_server_commands.txt $1:/home/web_server_commands.txt
docker exec $1 sh -c "python3 /home/web_server_operations.py"
