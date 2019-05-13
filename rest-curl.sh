#!/bin/bash
if [[ -z $1 ]]; then
  echo "Usage: rest-curl.sh <file>"
  exit 2
fi

source ./env.sh
curl -i -X POST -u "$user:$password" \
-d @$1 -H "Content-Type:application/json" \
-H "X-ID-TENANT-NAME:$idcs" \
https://jaas.oraclecloud.com//paas/api/v1.1/instancemgmt/$idcs/services/jaas/instances