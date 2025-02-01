#!/bin/sh

docker compose --file=./deployment/docker-compose.yml down
docker compose --env-file=./.env --file=./deployment/docker-compose.yml up -d
