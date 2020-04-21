#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="savangwd9/udacityproj"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproj --image=$dockerpath\
    --port=80 --labels app=udacityproj
    
kubectl get deployments

# Step 3:
# List kubernetes pods
kubectl get pods
export POD_NAME=$(kubectl get pods -o go-template \
  --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

# Step 4:
# Forward the container port to a host
kubectl port-forward $POD_NAME 8000:80
