#!/bin/sh

if [ $# -eq 1 ]
  then
    (crontab -l 2>/dev/null; echo "$1 /usr/local/bin/organize run >> /var/log/organize/organize.log 2>&1") | crontab -
    service cron restart
    /bin/bash
  else
	  /usr/local/bin/organize run >> /var/log/organize/organize.log 2>&1 && exit 0
fi