#!/bin/bash

# NOTA: Con la versión de Logstash en los Ubunto de las Ninja
#       Este setup no sirve, porque Logstash (viejo...) no lee las variables de entorno...

echo ""
export ELK_STACK_CLOUD_HOST="https://nnnnnnnnnnnnnnnnnnn.us-east-1.aws.found.io:9243"
export ELK_STACK_CLOUD_USER="elastic"
export ELK_STACK_CLOUD_PASS="pppwwwd"

# echo "ELK_STACK_CLOUD_HOST= ${ELK_STACK_CLOUD_HOST}"
# echo "ELK_STACK_CLOUD_USER= ${ELK_STACK_CLOUD_USER}"
# echo "ELK_STACK_CLOUD_PASS= ${ELK_STACK_CLOUD_PASS}"


printenv | grep ELK_STACK_CLOUD
echo ""
echo "Despues de Editar ejecutr:"
echo "source ./setup.sh"
echo ""