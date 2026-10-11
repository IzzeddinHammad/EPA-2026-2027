#!/bin/bash

# Lab 04 - Exercise 2: CPU count with usage validation function

# Function to report correct usage if the user omits $1
show_usage() {
    echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]"
    exit 1
}

# Check if the user supplied an argument
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
