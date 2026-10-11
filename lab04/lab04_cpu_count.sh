#!/bin/bash

# Lab 04 - Exercise 1: Count CPUs and verify system requirements

# 1. Capture the required CPU count passed as the first argument
required_cpus=$1

# 2. Count the CPUs by searching /proc/cpuinfo and counting matching lines
num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

# 3. Check if available CPUs are less than the requirement
if [ "$num_cpu" -lt "$required_cpus" ]; then
    echo "Error: Insufficient CPU cores. Found $num_cpu, but at least $required_cpus are required."
    exit 1
else
    echo "OK: System has $num_cpu CPU core(s), which meets or exceeds the required $required_cpus."
fi
