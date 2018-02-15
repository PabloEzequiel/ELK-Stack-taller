Ejemplos de visualización con Kibana



# Creamos el indice y el mapping
PUT my-geo-sites
{
    "mappings": {
        "doc": {
            "properties": {
                "location": {
                  "type": "geo_point"}
            }
        }
    }
}