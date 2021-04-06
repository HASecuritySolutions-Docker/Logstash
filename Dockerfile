FROM docker.elastic.co/logstash/logstash:7.6.2

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN /usr/share/logstash/bin/logstash-plugin update logstash-codec-cef

STOPSIGNAL SIGTERM
