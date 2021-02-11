#!/bin/bash

docker run -d --net=host \
   -v /mnt/horizen:/mnt/zen \
   -v /mnt/horizen/zcash-params:/mnt/zcash-params \
   -v /etc/letsencrypt/:/etc/letsencrypt/ \
   --env RPC_ALLOWIP=127.0.0.1 \
   --name horizen-node \
   --restart=always \
   local/horizen-node:latest

