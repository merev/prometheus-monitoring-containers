#!/bin/bash

echo "* Run Grafana container"
docker run -d -p 3000:3000 --network monitoring --name=grafana grafana/grafana

echo "* SLEEP 30 SECONDS"
sleep 30
