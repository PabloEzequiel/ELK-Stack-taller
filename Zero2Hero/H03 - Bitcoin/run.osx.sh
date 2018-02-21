# OSX
export ELK_STACK_DATA_H03="/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack/Zero2Hero/H03 - Bitcoin"
export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack

/usr/local/bin/logstash -f "${ELK_STACK_TALK_HOME}/Zero2Hero//H03 - Bitcoin"/logstash-H03.conf --config.reload.automatic
