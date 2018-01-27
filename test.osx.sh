
export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack


# /usr/local/bin/logstash --modules netflow -M "netflow.var.input.udp.port=3555" --cloud.id dc7559:dXMtZWFzdC0xLmF3cy5mb3VuZC5pbyRkYzc1NTlkODY2OWM5NmRkMjM1NzI5OGViMTM4OTI1ZiRhN2I4OTFkYWQ1MDE4NGQyNjEzNmE2NTZiZTNjNDRmMA==



#
# /usr/local/bin/logstash -f ${ELK_STACK_TALK_HOME}/Logstash/logstash-apple-csv.conf
#


/usr/local/bin/logstash -f ${ELK_STACK_TALK_HOME}/Logstash/logstash-apple-els.cloud.conf
