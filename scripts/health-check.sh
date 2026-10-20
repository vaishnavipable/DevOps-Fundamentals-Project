#!/bin/bash

echo "===== DevOps System Health Check ====="

echo ""
echo "1. Hostname"
hostname

echo ""
echo "2. Server Uptime"
uptime

echo ""
echo "3. CPU Usage"
top -bn1 | grep "%Cpu" 

echo ""
echo "4. Disk Usage"
df -h /

echo ""
echo "5. Memory Usage"
free -h

echo ""
echo "6. Logged-in Users"
who

echo ""
echo "7. Running Processes (Top 10)"
ps aux --sort=-%cpu | head -n 11

echo ""
echo "8. Apache Status"
if systemctl is-active --quiet apache2; then
    echo "Apache is running"
else
    echo "Apache is not running"
fi

echo ""
echo "===== Health Check Completed ====="
