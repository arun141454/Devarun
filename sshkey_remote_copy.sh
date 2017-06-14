#!/bin/bash

cat /etc/ansible/hosts |awk '{print $1}' |  while read output
do
    sshpass -p "P@ssw0rd!" ssh-copy-id root@"$output"
    echo "ssh-Key copied in $output"
done