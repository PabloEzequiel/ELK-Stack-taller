# Elastic Search Zero2Hero

Ejemplos y Casos de Uso completos, desde Zero 2 Hero


H01:
    - No salio... Falla el apache geoip en Kibana... 

OTROS:
a) Accion de Apple

b) Bitcoin



---

TALLER: ELK STACK V: FROM ZERO TO HERO (POR PABLO INCHAUSTI)
21 feb. 2018 -15:00hSala 14, Piso 32. Torre BBVA

MEDIUM
"Quinta y última parte del taller dedicado a “ELK”, el stack tecnológico para la recolección, indexado y visualización de datos basado en los proyectos open source Elasticsearch, Logstash y Kibana. 

El objetivo de este taller es hacer varios ejercicios que muestren las posibilides de uso del stack.

Entre los ejercicios típicos, se incluirán: procesamiento de los 

- [H01] logs de apache: desde la ingestión hasta la visualización,
- [H02] interacción con el tráfico de la red twitter 
- [H03] ingestión y visualización de acciones financieras [ok 80% ¿Que mas quisiera agregar 
- [H01] ingestión y visualización de documentos con geolocalización. 

Además, en los ejercicios se mostrará el uso del lenguaje Timelion en kibana para generar expresiones que combinan series de datos, 
las transforman y las visualizan. No es necesario haber participado de los talleres anteriores: se puede venir en Zero."


='tipo:btc'

--------

TIMELION

BTC vs ETH:
    .es(index=cripto-monedas-x2,timefield=FECHA,metric=max:price).label("BTC-USD"), 
    .es(index=cripto-monedas-x2,timefield=FECHA,metric=min:price).label("ETH_BTC").yaxis(2)


BTC vs ETH:
    .es(index=cripto-monedas-x2,timefield=FECHA,metric=max:price).label("BTC-USD"), 
    .es(index=cripto-monedas-x2,timefield=FECHA,metric=min:price).label("ETH_BTC").yaxis(2)



.es(index="local-live_data",timefield="created_at",metric="count:created_at",q="event_type=event.started_transaction").color("green"),
.es(index="local-live_data",timefield="created_at",metric="count:created_at",q="event_type=event.started_transaction").movingaverage(10)
.sum(15).color("red"),

.es(index="local-live_data",timefield="created_at",metric="count:created_at",q="event_type=event.started_transaction").movingaverage(10)
.subtract(15).color("red")


BTC vs ETH (usando  "tipo" => "btc-usd")
    
    $q1='tipo:btc-usd'

    $q1='index:cripto-monedas-x2,timefield:FECHA,metric:max:price'
    
    .es($q1).label("BTC-USD"), 
    .es(index=cripto-monedas-x2,timefield=FECHA,metric=min:price).label("ETH_BTC").yaxis(2)


    $q1='index:cripto-monedas-x2, timefield:FECHA',


 q='message:ls-index1'