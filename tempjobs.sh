#!/bin/bash

crontab -l | grep -v '^#' | grep -v '^$' | awk '{$1=$2=$3=$4=$5=""; print substr($0,6)}' > /tmp/cron_jobs.sh
chmod +x /tmp/cron_jobs.sh
/tmp/cron_jobs.sh
rm -f /tmp/cron_jobs.sh
