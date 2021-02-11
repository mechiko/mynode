#!/bin/bash

docker run -d --net=host \
   -v /mnt/zen:/mnt/zen \
   -v /etc/letsencrypt/:/etc/letsencrypt/ \
   --name zen-node \
   --restart=always \
   local/zen-node:latest
