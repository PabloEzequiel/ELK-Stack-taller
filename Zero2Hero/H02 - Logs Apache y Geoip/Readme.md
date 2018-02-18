GEO IP BASADO EN:

https://www.elastic.co/blog/geoip-in-the-elastic-stack


Basado en la version 5 (Cloud) de elastic... 

```
POST _ingest/pipeline/_simulate
{
  "pipeline" : {
"processors" : [
    {
      "grok": {
        "field": "message",
        "patterns": ["%{COMBINEDAPACHELOG}"]
      }
    },
    {
      "geoip": {
        "field": "clientip"
      }
    }
  ]
  },
  "docs": [
    {
      "_source": {
        "message": "104.194.203.69 - - [01/Apr/2017:16:21:15 +0000] \"GET /favicon.ico HTTP/1.1\" 200 3638 \"-\" \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36\""
      }
    }
  ]
}
```