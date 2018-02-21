# Ubuntu Ninja Notebook


export ELK_STACK_TALK_HOME=/home/ninja/github/ELK-Stack

echo "version de logstash: Necesito (6.2.2) "
/usr/share/logstash/bin/logstash --version


sudo /usr/share/logstash/bin/logstash -f "${ELK_STACK_TALK_HOME}/Zero2Hero/H02 - Twitter"/twitter-logstash.conf 

