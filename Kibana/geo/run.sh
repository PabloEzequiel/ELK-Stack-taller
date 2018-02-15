export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack

/usr/local/bin/logstash -f ${ELK_STACK_TALK_HOME}/Kibana/geo/logstash-geo.conf --config.reload.automatic


# UBUNTU
# export ELK_STACK_TALK_HOME=/home/ninja/github/ELK-Stack
# /opt/logstash/bin/logstash -f ${ELK_STACK_TALK_HOME}/Kibana/geo/logstash-geo.conf

