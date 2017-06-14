#!/bin/bash

cat /opt/hostnames |awk '{print $1}'|  while read output
do
     nslookup $output |awk '{print $1}' |grep Name
     if [$? = "Name:" ]; then
     nslookup "$output" |grep Name
     nslookup "$output" |grep Address
     else
     echo "$output No IP Address"
     fi
done