FROM alpine:3.18.3
RUN apk update && apk add rsyslog && rm -rf /var/cache/apk/*
COPY loghost.conf /etc/rsyslog.d/
ENTRYPOINT /usr/sbin/rsyslogd -n
