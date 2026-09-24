#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
echo "Hostname: $(hostname)"
echo "Operating System:"
uname -a

echo "Kernel:"
uname -r

echo "Uptime:"
uptime

echo "Disk Usage:"
df -h

echo "Memory Usage:"
vm_stat

echo "CPU Information:"
sysctl -n machdep.cpu.brand_string 2>/dev/null || lscpu

# Display CPU information
echo "CPU Information:"
