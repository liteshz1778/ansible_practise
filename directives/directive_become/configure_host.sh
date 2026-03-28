#!/bin/bash

export inventory_json=$(ansible-inventory -i /root/playbooks/inventory --list)

echo "inventory_json=$inventory_json"

export WEB1_IP=$(echo "$inventory_json" | jq -r '._meta.hostvars.web1.ansible_host')
export DB1_IP=$(echo "$inventory_json" | jq -r '._meta.hostvars.web2.ansible_host')

echo "WEB1_IP=$WEB1_IP"
echo "DB1_IP=$DB1_IP"

