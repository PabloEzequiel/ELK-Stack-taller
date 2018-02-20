Este ejercicio es comun a varios lados
Ahora se hace con Filebeats, pero antes era con Logstash ..

Este ejercicio esta basado en el post:

http://gro.solr.pl/elasticsearch-logstash-kibana-to-geo-identify-our-users/
https://github.com/solrpl/zerotohero/blob/master/logstash.conf


ME ANDUVO OK EL APACHE! Con el log GEO REFERENCIADO .... 



# geo  poing



    geoip {
      source => "clientip"
      target => geoip
      add_field => [ "[geoip][coordinates]", "%{[geoip][longitude]}" ]
      add_field => [ "[geoip][coordinates]", "%{[geoip][latitude]}" ]
    }
    mutate {
      convert => [ "[geoip][coordinates]", "float" ]
    }


# Creamos el indice y el mapping
PUT apache_logs_v1
{
   "mappings": {
       "geoip": {
           "properties": {
               "coordinates": {
                 "type": "geo_point"
               }
           }
       }
   }
}





...

