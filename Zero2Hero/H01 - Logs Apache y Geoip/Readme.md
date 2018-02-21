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



NOTA:

Otro ejercicio sobre apache log:
GEO IP BASADO EN:

https://www.elastic.co/blog/geoip-in-the-elastic-stack
Basado en la version 5 (Cloud) de elastic... 



........

NOTA: 
En las máquinas de las Ninja no envia los datos a Elastic Cloud ..

.... 7

Además la configuración del logstash de mi github no
impacta OK en el elastic local ...

....

Posibilidades:
    a) Utilizar todo Cloud ... con un único Logstash OK en una PC
       (Tiene que ser una Ninja por el Proyector asi se muestra la ingestion)
    b) Actualizar todas las PC ...

........

NOTA: 2018-02-21
A) Reinstale logstash a la ultima version ...
b) Creo que lo instale en algun lado con sudo, aunque no lo recuerdo
c) para ejecutarlo, hay que ejecutar sudo ./run.sh
e) Si se ejecuta con sudo, no ve a las variables configuradas con ${}
f) Si no se ejecuta con sudo ... tiene permiso denegado para ejecutar ...