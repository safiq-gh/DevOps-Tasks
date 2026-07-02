#!/bin/bash

echo "===== SERVER REPORT ====="

echo "Date:"
date

echo "CPU Usage:"
top -bn1 | head -5

echo "Memory:"
free -h

echo "Disk:"
df -h
