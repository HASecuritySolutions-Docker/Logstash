FROM docker.elastic.co/logstash/logstash:8.13.2

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

COPY logstash_plugins /logstash_plugins
COPY docker-entrypoint /usr/local/bin/docker-entrypoint
USER root
RUN chmod +x /usr/local/bin/docker-entrypoint \
    && chmod +r /usr/local/bin/docker-entrypoint
USER logstash
RUN /usr/share/logstash/bin/logstash-plugin install --preserve logstash-output-opensearch \
    && /usr/share/logstash/bin/logstash-plugin install --preserve logstash-input-opensearch \
    && /usr/share/logstash/bin/logstash-plugin install --preserve logstash-filter-opensearch \
    && /usr/share/logstash/bin/logstash-plugin install --preserve logstash-output-syslog

STOPSIGNAL SIGTERM
