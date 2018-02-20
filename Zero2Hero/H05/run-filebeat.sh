# OSX
export ELK_STACK_DATA_H02="/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack/Zero2Hero/H02"
# export ELK_STACK_TALK_HOME=/Users/pabloinchausti/Desktop/DevOps/code/github/Pabloin/ELK-Stack

# /usr/local/bin/filebeat 

# ./filebeat -e --modules=apache2 --setup -M "apache2.access.var.paths=[${ELK_STACK_DATA_H02}/apache_h02.log]"

# ./filebeat setup -E "setup.dashboards.directory=/usr/share/metricbeat/kibana" 

 /usr/local/bin/filebeat -e --modules=apache2 \ 
    --setup -M "apache2.access.var.paths=[${ELK_STACK_DATA_H02}/apache_h02.log]"
    
    
    #   \
    # --setup -E "setup.dashboards.directory=/usr/local/var/homebrew/linked/kibana" 