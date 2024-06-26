#!/bin/bash

mem_total=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $2}')
mem_used=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $3}')
mem_free=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $4}')
mem_shared=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $5}')
mem_buff=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $6}')
mem_available=$(/usr/bin/free -m | /usr/bin/awk '/^Mem:/{print $7}')

swap_total=$(/usr/bin/free -m | /usr/bin/awk '/^Swap:/{print $2}')
swap_used=$(/usr/bin/free -m | /usr/bin/awk '/^Swap:/{print $3}')
swap_free=$(/usr/bin/free -m | /usr/bin/awk '/^Swap:/{print $4}')

path_size=$(/usr/bin/du -sh /home/ludwigd/SisOP/Nomor4 | /usr/bin/awk '{print $1}')
echo "$mem_total,$mem_used,$mem_free,$mem_shared,$mem_buff,$mem_available,$swap_total,$swap_used,$swap_free,/home/ludwigd/SisOP/Nomor4,$path_size" >> log.txt
