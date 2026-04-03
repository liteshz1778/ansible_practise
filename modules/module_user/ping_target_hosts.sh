#!/bin/bash

echo "======================================"

echo "Pinged using admin user"
ansible -i ./other_usr_inventory.yaml all -m ping

echo "======================================"

echo "Pinged using web_user user"
ansible -i ./other_usr_inventory.yaml -e username=web_user all -m ping


echo "======================================"
