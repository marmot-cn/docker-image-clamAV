FROM alpine:latest

RUN apk update && apk add clamav-0.102.1-r0
RUN freshclam

ENV SCANDIR=/scan
COPY scan.sh /scan.sh
ENTRYPOINT [ "sh", "/scan.sh" ]
