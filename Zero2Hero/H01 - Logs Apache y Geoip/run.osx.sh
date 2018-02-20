# OSX PI
export ELK_STACK_DATA_H01="/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack/Zero2Hero/H01 - Logs Apache y Geoip"
export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack

/usr/local/bin/logstash -f "${ELK_STACK_TALK_HOME}/Zero2Hero/H01 - Logs Apache y Geoip"/logstash-h01.conf --config.reload.automatic

