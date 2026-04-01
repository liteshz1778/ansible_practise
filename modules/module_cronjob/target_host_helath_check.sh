#!/bin/bash

echo "===== TARGET SERVER HEALTH CHECK ====="
echo "HostName: $(hostname)"
echo "Host IP Address"
echo "Date: $(date)"
echo

# -------------------------------
# CPU Load
# -------------------------------
echo "---- CPU Load ----"
uptime
echo

# -------------------------------
# Memory Usage
# -------------------------------
echo "---- Memory Usage ----"
free -m
echo

# -------------------------------
# Disk Usage
# -------------------------------
echo "---- Disk Usage ----"
df -h
echo

# -------------------------------
# Internet Connectivity
# -------------------------------
echo "---- Internet Connectivity ----"
ping -c 5 $(hostname -i) &> /dev/null && echo "Internet is reachable" || echo "No internet connectivity"
echo

echo "===== HEALTH CHECK COMPLETE ====="
