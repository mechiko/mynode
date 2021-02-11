#!/bin/bash

# link the secure node tracker config, bail if not present
#if [ -f "/mnt/zen/secnode/config.json" ]; then
#  echo "Secure node config found OK - linking..."
#  ln -s /mnt/zen/secnode /home/node/nodetracker/config > /dev/null 2>&1 || true
#else
#  echo "No secure node config found. exiting"
#  exit 1
#fi

# Copy the zencash params
# cp -r /mnt/zen/zcash-params /mnt/zcash-params

# Fix the permissons
chown -R node:node /home/node/nodetracker
chmod g+rw /home/node/nodetracker
chmod -R 777 /home/node/nodetracker/config

cd /home/node/nodetracker
gosu node node app.js
