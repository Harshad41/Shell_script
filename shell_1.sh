#!/bin/bash

echo "============================"
echo " System Health Information "
echo "============================"

echo "👤 Current User: $(whoami)"
echo "⏳ Uptime: $(uptime -p)"

echo "💾 Disk Usage:"
df -h --total | grep 'total'

echo "🧠 Memory Usage:"
free -h | grep -E "Mem|Swap"

echo "🔥 Top 5 Memory-consuming Processes:"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6

echo "============================"
echo " Health check complete! "
echo "============================"
