#!/bin/bash

IP="34.232.51.47"
KEY=/var/lib/jenkins/splunk-test.pem
USER=ubuntu
for S in $IP ; do
        ssh -i $KEY $USER@$S "sudo chef-client"
done
exit $?
