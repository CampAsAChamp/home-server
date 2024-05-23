# Add command(s) to run all of the docker compose files together
docker compose \
    -f docker/docker-compose.yaml \
    -f docker/immich/docker-compose.yaml \
    -f docker/spotify/docker-compose.yaml \
    up
