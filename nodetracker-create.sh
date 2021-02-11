#!/bin/bash

docker run -d --net=host \
   -v /mnt/horizen:/mnt/zen \
   -v /mnt/nodetracker:/home/node/nodetracker/config \
   --name horizen-nodetracker \
   --restart=always \
   local/nodetracker:latest

