#!/bin/bash

# Make this script executable
chmod +x "$0"

# Path to the ASCII art script
ASCII_SCRIPT="./mc_server.sh"

# Make the ASCII art script executable
chmod +x "$ASCII_SCRIPT"

# Create cron job to run every 2 minutes
(crontab -l 2>dev/null; echo "*/2 * * * * $ASCII_SCRIPT") | crontab -

# Check current crontab entries
echo "Current crontab entries:"
crontab -l 
