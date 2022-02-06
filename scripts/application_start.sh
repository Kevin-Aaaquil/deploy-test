#!/bin/bash

cd /home/ubuntu/dev/deploy-test
yarn install
yarn build
# pm2 start npm --name "server" -- start
pm2 restart build/index.js --name "deploy-test"