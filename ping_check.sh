#!/bin/bash
#!/usr/bin/expect

cat /opt/ip_list |  while read output
do
  ping -c 1 "$output" > ping_ip.txt
    if [ $? -eq 0 ]
    then
    echo " $output Ping_OK"
    else
    echo " $output Ping_Not_Ok"
    fi
done