#!/bin/bash

echo ""
export ELK_STACK_CLOUD_HOST="https://.us-east-1.aws.found.io:9243"
export ELK_STACK_CLOUD_USER="elastic"
export ELK_STACK_CLOUD_PASS="654654"

# echo "ELK_STACK_CLOUD_HOST= ${ELK_STACK_CLOUD_HOST}"
# echo "ELK_STACK_CLOUD_USER= ${ELK_STACK_CLOUD_USER}"
# echo "ELK_STACK_CLOUD_PASS= ${ELK_STACK_CLOUD_PASS}"


printenv | grep ELK_STACK_CLOUD
echo ""
echo "Despues de Editar ejecutr:"
echo "source ./setup.sh"
echo ""