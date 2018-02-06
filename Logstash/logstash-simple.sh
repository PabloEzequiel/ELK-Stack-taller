$ cat test.config 
input { stdin {} }
output { stdout { codec => rubydebug } }
filter {
  date {
    match => ["message", "dd-MM-yyyy HH:mm:ss"]
  }
}
$ echo '02-04-2015 12:01:01' | /opt/logstash/bin/logstash -f test.config
Settings: Default pipeline workers: 8
Logstash startup completed
{
       "message" => "02-04-2015 12:01:01",
      "@version" => "1",
    "@timestamp" => "2015-04-02T10:01:01.000Z",
          "host" => "lnxolofon"
}
Logstash shutdown completed