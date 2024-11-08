#!/bin/bash

# Create cron job to run every 2 minutes
(crontab -l 2>/dev/null; echo "*/2 * * * * $ASCII_SCRIPT") | crontab -

# Check current crontab entries
echo "Current crontab entries:"
crontab -l 