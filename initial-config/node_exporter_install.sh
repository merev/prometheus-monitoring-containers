#!/bin/bash

echo "* Run Node Exporter container"
docker run -d --name=node-exporter -p 9100:9100 quay.io/prometheus/node-exporter