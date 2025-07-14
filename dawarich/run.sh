#!/bin/bash

set -e

echo "[Dawarich Addon] Downloading docker-compose.yml..."
mkdir -p /data/dawarich
cd /data/dawarich
curl -sSL https://raw.githubusercontent.com/Freika/dawarich/refs/heads/master/docker/docker-compose.yml -o docker-compose.yml

echo "[Dawarich Addon] Starting Docker Compose stack..."
docker-compose up -d

echo "[Dawarich Addon] Dawarich stack deployed successfully!"
