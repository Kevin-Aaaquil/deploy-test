#!/bin/bash

cd dev/deploy-test

yarn build

pm2 start build/index.js