#!/bin/bash
#Author: N M
#Date: April 21, 2021

echo -e "\n Checking the cpu info \n"
sleep 3
lscpu

echo -e "\n Checking the hard drive\n"
sleep 3
lsblk

echo -e "\n Checking the hard memory\n"
sleep 3
free -m

echo -e "\n Checking the system bits\n"
sleep 3
getconf LONG_BIT

echo -e "\n Cheking the kernel version\n"
sleep 3
uname -r

echo -e "\n Checking the OS version\n"
sleep 3
cat /etc/*release

echo -e "\n Checking system bits (32 or 64)\n"
sleep 3
getconf LONG_BIT

echo -e "\n Checking the Hostname\n"
sleep 3
hostnamectl

echo -e "\n Checking the ip address\n"
sleep 3
ifconfig

echo -e "\n Cheking the kernel version\n"
sleep 3
uname -r

echo -e "\n Checking the OS version\n"
sleep 3
cat /etc/*release

echo -e "\n Checking system bits (32 or 64)\n"
sleep 3
getconf LONG_BIT

echo -e "\n Checking the Hostname\n"
sleep 3
hostnamectl

echo -e "\n Checking the ip address\n"
sleep 3
ifconfig

echo -e "\n Checking all the open ports\n"
sleep 3
lsof -i -P -n | grep LISTEN

echo -e "\n Checking the DNS\n"
sleep 3
dig tecmint.com

echo -e "\n Checking if the system is virtual or physical\n"
sleep 3
lshw |head

echo -e "\n Checking the manufacturer\n"
sleep 3
dmidecode -t system

