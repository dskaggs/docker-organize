#!/bin/sh
set -e

echo "$1" | crontab - && crond -f -L -
