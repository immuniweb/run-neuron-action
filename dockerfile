FROM debian:stable-slim

ADD entrypoint.sh /entrypoint.sh

RUN apt update
RUN apt install -y curl

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
