#!/bin/bash

docker run -d --rm --net=host \
   -v /mnt/zen:/mnt/zen \
   -v /etc/letsencrypt/:/etc/letsencrypt/ \
   --name zen-node-rescan \
   local/zen-node:latest \
   zend -rescan
