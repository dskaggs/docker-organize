FROM python:3.8-slim

RUN apt-get update
RUN apt-get install cron -y
RUN touch /var/spool/cron/crontabs/root
RUN pip3 install -U organize-tool

COPY        scripts/entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  [ "/bin/bash", "-c", "/entrypoint.sh"]
