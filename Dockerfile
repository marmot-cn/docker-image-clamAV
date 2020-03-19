FROM alpine:latest

RUN apk update && apk add clamav=0.102.1-r0 && freshclam && ln /usr/lib64/libclamunrar_iface.so.6 /usr/lib64/libclamunrar_iface.so

ENV SCANDIR=/scan
COPY scan.sh /scan.sh
ENTRYPOINT [ "sh", "/scan.sh" ]
