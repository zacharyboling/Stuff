#! /bin/bash

echo
echo "Current User & Hostname: $(who | awk '{print $1}')@$(hostname)"
echo
echo "CPU Info: "
lscpu | grep name:
lscpu | grep MHz:
echo
echo "Free and Total Memory:"
echo "Free Memory:  $(free -h | grep Mem: | awk '{print $4}')"
echo "Total Memory: $(free -h | grep Mem: | awk '{print $2}')"
echo
echo "Free and Total Swap Space:"
echo "Free Swap:  $(free -h | grep Swap: | awk '{print $4}')"
echo "Total Swap: $(free -h | grep Swap: | awk '{print $2}')"
echo
echo "Free and Total Space on ext4 and xfs partitions:"
echo "Name: Filesystem: FreeSpace: TotalSpace:"
echo
echo "$(df -TH | grep ext4 | awk '{print $1,$2,$5,$3}')"
echo "$(df -TH | grep xfs  | awk '{print $1,$2,$5,$3}')"
echo
echo "Current IP address and Subnet Mask:"
echo "IP Address:  $(ifconfig | grep -m 1 inet | awk '{print $2}')"
echo "Subnet Mask: $(ifconfig | grep -m 1 inet | awk '{print $4}')"
echo
