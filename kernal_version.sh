!/bin/bash

cat /tmp/host.txt |  while read output
do
    ssh 1 "$output"
    cat /etc/issue |awk '{print $1}' |grep -i Cent
    if [$? = "Centos" ]; then
     uname -a |awk '{print $2 echo " is " $3}'
        echo "Kernal Version of $uname"
    else
    echo "$output not ubuntu"
    fi
done