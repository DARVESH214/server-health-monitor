#!/bin/bash

# Server Health Monitoring Script
# Author: YOUR NAME
# Created On: $(date)

LOG_FILE="server_health.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "========= Server Health Report ($DATE) =========" >> $LOG_FILE

echo "" >> $LOG_FILE

# CPU Load
echo "[CPU LOAD]" >> $LOG_FILE
uptime >> $LOG_FILE
echo "" >> $LOG_FILE

# Memory Usage
echo "[MEMORY USAGE]" >> $LOG_FILE
free -h >> $LOG_FILE
echo "" >> $LOG_FILE

# Disk Usage
echo "[DISK USAGE]" >> $LOG_FILE
df -h >> $LOG_FILE
echo "" >> $LOG_FILE

# Top 5 processes
echo "[TOP 5 PROCESSES]" >> $LOG_FILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6 >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Report saved to $LOG_FILE"
