#!/bin/bash

set -e

echo "Stopping containers..."

docker stop frontend backend || true

echo "Removing containers..."

docker rm frontend backend || true

echo "Pulling stable images..."

docker pull username/frontend-app:v1
docker pull username/backend-app:v1

echo "Starting containers..."

docker run -d --name frontend -p 3000:3000 jamuna22/frontend-app:v1

docker run -d --name backend -p 5000:5000 jamuna22/backend-app:v1

echo "Rollback completed successfully!"
