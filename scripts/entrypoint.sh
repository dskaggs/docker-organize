#!/bin/sh
set -e

if [ $# -eq 1 ]
  then
    echo "$1" | crontab - && crond -f -L -
  else
	organize run && exit 0
fi