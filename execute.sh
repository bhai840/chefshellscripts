#!/bin/bash

IP="35.172.231.241"
KEY=/var/lib/jenkins/splunk-test.pem
USER=ubuntu
for S in $IP ; do
        ssh -i $KEY $USER@$S "sudo chef-client"
done
