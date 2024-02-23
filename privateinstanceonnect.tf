# [root@ip-10-0-15-109 ec2-user]# vi private.pem
# [root@ip-10-0-15-109 ec2-user]# chmod 400 private.pem 
# [root@ip-10-0-15-109 ec2-user]# ssh -i private.pem ec2-user@10.0.19.93
# The authenticity of host '10.0.19.93 (10.0.19.93)' can't be established.
# ED25519 key fingerprint is SHA256:8t0ihCRoBWYwUtEw1yreJNXmDc+8Hg0yq1BhIW1HUuE.
# This key is not known by any other names
# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# Warning: Permanently added '10.0.19.93' (ED25519) to the list of known hosts.
#    ,     #_
#    ~\_  ####_        Amazon Linux 2023
#   ~~  \_#####\
#   ~~     \###|
#   ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
#    ~~       V~' '->
#     ~~~         /
#       ~~._.   _/
#          _/ _/
#        _/m/'
# [ec2-user@ip-10-0-19-93 ~]$ vi script.sh
# ##!/bin/bash
# sudo yum update -y
# sudo yum install httpd -y
# Sudo systemctl start httpd
# cd /var/www/html
# echo “hi this Shivam from softcell” > index.html

# chmod 700 script.sh 
# [ec2-user@ip-10-0-22-174 ~]$ ./script.sh 

