#!/bin/bash

echo "* Create docker volume"
docker volume create prometheus-config

echo "* Save the configuration into the volume"
cp /shared/prometheus_files/prometheus.yaml /var/lib/docker/volumes/prometheus-config/_data/prometheus.yml
cp /shared/prometheus_files/applications.json /var/lib/docker/volumes/prometheus-config/_data/applications.json

echo "* Create docker network"
docker network create monitoring

echo "* Run Prometheus container"
docker run -d -p 9090:9090 --network monitoring -v prometheus-config:/etc/prometheus --name prometheus prom/prometheus
