#!/bin/bash

# Create tempinfo directory in current working directory
mkdir -p tempinfo

# Output file path
OUTPUT_FILE="tempinfo/myIPhealth.txt"

# Start log
echo "Windows VM Network Health Log" > "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"

# Capture IP configuration
echo "" >> "$OUTPUT_FILE"
echo "IP CONFIGURATION INFORMATION" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"

# Try Linux-style first, fallback to Windows if needed
if command -v ip > /dev/null 2>&1; then
    ip addr show >> "$OUTPUT_FILE"
else
    ipconfig /all >> "$OUTPUT_FILE"
fi

# Network connectivity test
echo "" >> "$OUTPUT_FILE"
echo "NETWORK CONNECTIVITY TEST" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"
ping 8.8.8.8 >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "Log saved to $OUTPUT_FILE"