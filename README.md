# docker-rsyslogd

Add docker/local storage to keep your log files.
Based from [alpine](https://www.alpinelinux.org/ Alpine is best) distribution ... my favorite 'lite' distrib for docker.


```
docker run -it --rm -v rsyslog:/var/log/rsyslog docker-syslog

```

You need to gzip them:
```
find -mtime +1 /var/log/rsyslog -name "*.log" -exec gzip {} \;
```
