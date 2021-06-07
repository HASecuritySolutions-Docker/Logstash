FROM docker.elastic.co/logstash/logstash:7.10.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-protobuf

STOPSIGNAL SIGTERM
