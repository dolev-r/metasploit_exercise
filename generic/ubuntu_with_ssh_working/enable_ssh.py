import os


with open("/home/ssh_commands.txt", "r") as f:
    data = f.read()
    commands = data.split("\n")

for command in commands:
    print(os.system(command))
