#!/bin/bash

#This script will check the new install server
#April 2021     #By Nancy M.

##CPU check
CPU_N='nproc'
if [ ${CPU_N} -lt 2 ]
then
echo "CPU check FAILED"
else
echo "CPU check PASS"
fi 

##Memory check
MEM ='free -m |grep Mem | awk '{print$2}''
if [ ${MEM} -gt 2000 ]
then
echo "Memory check PASS"
else
echo "Memory check FAILED"
fi

##Check if files exists
if [ -f /etc/group ]
then 
echo "File /etc/group EXIST"
else
echo "File /etc/group MISSING"
fi
if [ -f /etc/passwd ]
echo "File /etc/passwd EXIST"
else
echo "File /etc/passwd MISSING"
fi 
if [ -f /etc/httpd ]
echo "File /etc/httpd PASS"
else
echo "File /etc/httpd FAILED"
fi 
if [ -f /etc/kubernetes ]
echo "File /etc/kubernetes EXIST"
else
echo "File /etc/kubernetes MISSING"
fi 

##Check the first digit of kernel version
KernelVersion='uname -r | awk -F "." '{print$1}''
if [ ${KernelVersion} -ge 3 ]
then
echo "Kernel Version check PASS"
else
echo "Kernel Version check FAILED"
fi   

##Check user puppet
RC=$?
if [ ${RC} -eq 0 ]
then
echo "User puppet check PASS"
else
echo "User pupper check FAILED"
fi
