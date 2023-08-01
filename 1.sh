#!/bin/bash

# Prompt the user to enter an IP address
read -p "Enter the IP address you want to scan: " ip_address

# Validate the provided IP address format
if ! [[ $ip_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Invalid IP address format. Please provide a valid IP address."
    exit 1
fi

# Perform the nmap scan with service version detection
echo "Scanning IP address: $ip_address with service version detection..."
nmap -T4 -sV "$ip_address"
