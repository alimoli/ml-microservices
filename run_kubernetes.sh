#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
image=limoli/udacity-ml-flask
app=udacity-ml-flask-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$image udacity-ml-flask-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity-ml-flask-app 8000:80

