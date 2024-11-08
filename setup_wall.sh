#!/bin/bash

# Make this script executable
chmod +x "$0"

# Make new directories for script to be placed
mkdir -p /.bin/projects

# Path to the ASCII art script
ASCII_SCRIPT="/.bin/projects/load_gddc.sh"

# Move the mc_server file to the new directory
mv ./load_gddc.sh "$ASCII_SCRIPT"

# Make the ASCII art script executable
chmod +x "$ASCII_SCRIPT"

# Create cron job to run every 2 minutes
(crontab -l 2>/dev/null; echo "*/2 * * * * $ASCII_SCRIPT") | crontab -

# Check current crontab entries
echo "Current crontab entries:"
crontab -l 
