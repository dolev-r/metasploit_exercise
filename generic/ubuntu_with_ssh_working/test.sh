#!/usr/bin/expect -f

spawn ssh moses@172.17.0.2
expect "%" 
send "123\r"
