#!/bin/bash

# Author: rtmkibish

# Description:
# Creates an archive of the README.md file

# Usage:
# readme_backup.sh

tar -cvf ./readme_backup_"$(date +%d-%m-%Y:%H:%M:%S)".tar ./README.md 2>&1
exit 0
