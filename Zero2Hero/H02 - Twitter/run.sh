# OSX
export ELK_STACK_DATA_H03="/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack/Zero2Hero/H02 - Twitter"
export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack

/usr/local/bin/logstash -f "${ELK_STACK_TALK_HOME}/Zero2Hero//H02 - Twitter"/twitter-logstash.conf --config.reload.automatic


