FROM frolvlad/alpine-python3

RUN pip3 install organize-tool

COPY        scripts/entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]
