#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=savangwd9/udacityproj
dockerpath="savangwd9/udacityproj"
# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udacityproj savangwd9/udacityproj


# Step 3:
# Push image to a docker repository

docker push savangwd9/udacityproj
