#!/bin/bash
COUNTER=0
while read -r line; do
    if [[ $line =~ ^[a-z]{0,3}[0-9]{2,8}[A-Z]{3,}$ ]]; then
        let COUNTER=COUNTER+1
    fi
done < "$1"
echo "TOTAL MATCHES: $COUNTER"
