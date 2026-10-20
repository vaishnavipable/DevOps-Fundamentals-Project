#!/bin/bash

echo "===== DevOps System Health Check ====="

echo ""
echo "1. Hostname"
hostname

echo ""
echo "2. Server Uptime"
uptime

echo ""
echo "3. Disk Usage"
df -h /

echo ""
echo "4. Memory Usage"
free -h

echo ""
echo "5. Apache Status"
systemctl is-active apache2

echo ""
echo "===== Health Check Completed ====="
