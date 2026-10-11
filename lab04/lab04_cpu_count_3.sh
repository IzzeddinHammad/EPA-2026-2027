#!/bin/bash

# Lab 04 - Exercise 3: Extended CPU analysis with additional diagnostic tools

show_usage() {
    echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]"
    exit 1
}

if [ $# -eq 0 ]; then
    show_usage
fi

required_cpus=$1
num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$required_cpus" ]; then
    echo "Error: Insufficient CPU cores. Found $num_cpu, but at least $required_cpus are required."
    exit 1
else
    echo "OK: System has $num_cpu CPU core(s), which meets or exceeds the required $required_cpus."
fi

echo ""
echo "=== Additional System Diagnostics ==="

# Command 1: lscpu (filtering for architecture and CPU model)
echo "--- CPU Architecture Summary (lscpu) ---"
lscpu | grep -E "Model name|Architecture|CPU MHz"

# Command 2: uptime (checking real-time system load)
echo "--- System Load and Uptime (uptime) ---"
uptime

echo ""
echo "=== Command Documentation & Improvements ==="
echo "1. 'lscpu': Added to display hardware architecture and CPU model details."
echo "   Improvement: Raw core count alone does not tell the full story; this confirms whether the cores are running on the intended hardware architecture."
echo "2. 'uptime': Added to check system uptime and 1/5/15 minute load averages."
echo "   Improvement: Helps verify whether the existing CPU cores are already overloaded before attempting to deploy resource-intensive software."
