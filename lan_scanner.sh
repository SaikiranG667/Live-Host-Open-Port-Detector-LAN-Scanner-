#!/bin/bash

echo "IP,Port,State,Service" > results.csv

for ip in $(nmap -sn 10.85.98.0/24 | grep "Nmap scan report" | awk '{print $5}'); do
    echo "Scanning $ip"
    nmap -p 1-1000 -sV $ip | while read line; do
        if echo "$line" | grep -q "open"; then
            port=$(echo "$line" | awk '{print $1}' | cut -d'/' -f1)
            state=$(echo "$line" | awk '{print $2}')
            service=$(echo "$line" | awk '{print $3}')
            echo "$ip,$port,$state,$service" | tee -a results.csv
        fi
    done
done

echo "Scan complete"

