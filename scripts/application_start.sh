#!/bin/bash

cd /home/ubuntu/dev/deploy-test
# pm2 start npm --name "server" -- start
pm2 start build/index.js --name "deploy-test"