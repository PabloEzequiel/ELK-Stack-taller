# Elasticsearch Search API Example



## 2. Elasticsearch API REST
### 2.1 Cluster API

```
            http://localhost:9200/_cluster/health?pretty
curl -XGET 'http://localhost:9200/_cluster/health?pretty'

```

### 2.1.2 Cluster Stats

```
            http://localhost:9200/_cluster/stats?human&pretty
curl -XGET 'http://localhost:9200/_cluster/stats?human&pretty'
```

### 2.1.3 Nodes Stats

```
            http://localhost:9200/_nodes?pretty
curl -XGET 'http://localhost:9200/_nodes?pretty'
```

## 2.2 Document API

### 2.2.1 Index API (PUT, GET)

```
curl -XPUT 'localhost:9200/my-twitter/tweet/1?pretty' -H 'Content-Type: application/json' -d'
{
    "user" : "thor",
    "post_date" : "2018-01-31T20:12:12",
    "message" : "Prueba en Elasticsearch Tweet1 (Thor)"
}
'

curl -XPUT 'localhost:9200/my-twitter/tweet/2?pretty' -H 'Content-Type: application/json' -d'
{
    "user" : "rocky",
    "post_date" : "2018-01-31T20:13:12",
    "message" : "Prueba en Elasticsearch Tweet1 (Rocky)"
}
'

curl -XPUT 'localhost:9200/my-twitter/tweet/3?pretty' -H 'Content-Type: application/json' -d'
{
    "user" : "Meteoro",
    "post_date" : "2018-01-31T20:14:12",
    "message" : "Prueba en Elasticsearch Tweet1 (Meteoro)"
}
'
```

Podemos consultar (Por GET) no solamente los docuemntos que se insertaron sino también la información del índice. 

```

(GET)  http://localhost:9200/my-twitter/_count   
(GET)  http://localhost:9200/my-twitter/
(GET)  http://localhost:9200/my-twitter/tweet/3?pretty 

```

### 2.2.3 Index API (POST para Update)

curl -XPOST 'localhost:9200/twitter/tweet/3/_update?pretty' -H 'Content-Type: application/json' -d'
{


    "script" : "ctx._source.new_field = \"que pasa\", ctx._source.new_field2 = \"value_of_new_field2\", "
    
}
'

## 2.3 Search API

### 2.3.1 Search API - query params

```

http://localhost:9200/twitter/_search?q=user:Meteoro&pretty
http://localhost:9200/_search?q=user:Meteoro&pretty

curl -XGET ‘localhost:9200/twitter/_search?q=user:Meteoro&pretty'
curl -XGET ‘localhost:9200/_search?q=new_field:value_of_new_field&pretty'
```

### 2.3.2 Search API - query body

```
curl -XGET 'localhost:9200/my-twitter/tweet/_search?pretty' -H 'Content-Type: application/json' -d'
 {
     "query" : {
         "term" : { "user" : "Meteoro" }
     }
 }
'
```

### 2.3.3 Search API - Templates

```
GET /_search/template?pretty
{
    "inline" : {
        "query": { "match" : { "{{my_field}}" : "{{my_value}}" } },
        "size" : "{{my_size}}"
      },
      
    "params" : {
         "my_field" : "user",
         "my_value" : "Meteoro",
         "my_size" : 1
     } 
}

```



### 2.4 Query DSL


```
GET /twitter/_search?pretty
{
    "query": {
        "match_all" : {      }
    }
}

GET /twitter/_search?pretty
{
    "query": {
        "match" : {
            "user": "Meteoro"
        }
    }
}

GET /twitter/_search?pretty
{
    "query": {
        "regexp":{
            "user": "t.*"
        }
    }
}


```

## 2.4 Indices API


## 2.4.1 Get Mapping

```
GET /my-twitter/_mapping/tweet?pretty
GET stock-apple-v3/_mapping 

```






