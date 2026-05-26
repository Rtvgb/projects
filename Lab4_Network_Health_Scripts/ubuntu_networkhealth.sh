#!/bin/bash

# Create tempinfo directory
mkdir -p tempinfo

# Output file
OUTPUT_FILE="tempinfo/myIPhealth.txt"

# Start log
echo "Ubuntu VM Network Health Log" > "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"

# IP configuration
echo "" >> "$OUTPUT_FILE"
echo "IP CONFIGURATION INFORMATION" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"
ip addr show >> "$OUTPUT_FILE"

# Network test
echo "" >> "$OUTPUT_FILE"
echo "NETWORK CONNECTIVITY TEST" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"
ping  8.8.8.8 >> "$OUTPUT_FILE"

echo ""
echo "Log saved to $OUTPUT_FILE"