## Filebeat

El contenido de esta carpeta sigue los pasos de la carpeta:
https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html

En ubuntu tenemos:

logstash-tutorial.log

#------------

sudo filebeat -e -c filebeat.yml -d "publish"

# /opt/logstash/bin/logstash -f Filebeat/logstash-filebeat.conf

/opt/logstash/bin/logstash -f ${ELK_STACK_TALK_HOME}/Filebeat/logstash-filebeat.conf

