FROM frolvlad/alpine-python3

RUN pip install --upgrade pip
RUN pip3 install -U organize-tool

COPY        scripts/entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]
