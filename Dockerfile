FROM python:3.8-slim

RUN apt install cron
RUN pip3 install -U organize-tool

COPY        scripts/entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]
