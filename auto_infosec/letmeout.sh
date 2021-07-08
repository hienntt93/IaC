#!/bin/bash
for i in $(eval echo {$1..$2})
do 
    echo "is port $i open for potetial exfil?"
    curl http://$3:$i
    sleep .5
done