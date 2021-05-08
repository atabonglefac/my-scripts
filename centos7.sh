#!/bin/bash


# description: centos 7 Audit
# Author : Etiendem
#Date: May 7 2021

echo -e "\n***************************************************************\n" >> /tmp/centos7-$( date +%F-%T)
echo -e "\n ********** centos7 **************************\n"  >> /tmp/centos7-$( date +%F-%T)
echo -e "\n******************************\n"  >> /tmp/centos7-$( date +%F-%T)
## check host file
echo -e "\n checking the hosts file \n " >> /tmp/centos7-$( date +%F-%T)
 if 
[ -f /etc/hosts ] >> /tmp/centos7-$( date +%F-%T)
then
echo " file etc/hosts file exist" >> /tmp/centos7-$( date +%F-%T)
else
echo " the file /etc/hosts does not exist"   >> /tmp/centos7-$( date +%F-%T) 
fi
 ## check selinux
echo -e "\n the selinux is set to $(getenforce) \n " >> /tmp/centos7-$( date +%F-%T)
## checking for samba package
echo -e " \n checking for sambe package \n "
 rpm -qa |grep samba >/dev/null 2>&1  >> /tmp/centos7-$( date +%F-%T)
if 
[ $?  -eq 0 ]
then
 echo " package samba is installed"  >> /tmp/centos7-$( date +%F-%T)
else
 echo " package samba is not installed"  >> /tmp/centos7-$( date +%F-%T)
fi
## checking the audit daemon
systemctl status auditd |awk 'NR ==3 {print " audit is"  $3 }' | tr -d '()'
