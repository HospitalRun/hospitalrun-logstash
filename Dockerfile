FROM logstash:5.3.1

RUN logstash-plugin update --no-verify logstash-input-couchdb_changes
RUN rm -f /usr/share/logstash/pipeline/logstash.conf

ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/