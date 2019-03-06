FROM docker.elastic.co/logstash/logstash:6.6.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-elasticsearch
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-tld
USER logstash

STOPSIGNAL SIGTERM
