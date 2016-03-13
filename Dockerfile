FROM python:2.7

RUN pip install --upgrade "subfind-cli==3.1.1.0"

COPY entry.sh /entry.sh

VOLUME /data

ENTRYPOINT ["/entry.sh"]

WORKDIR /data
