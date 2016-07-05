# docker-rsyslogd

Add docker/local storage to keep your log files.

```
docker run -it --rm -v rsyslog:/var/log/rsyslog docker-syslog

```

You need to gzip them:
```
find -mtime +1 /var/log/rsyslog -name "*.log" -exec gzip {} \;
```
