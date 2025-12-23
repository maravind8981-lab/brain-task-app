#!/bin/bash
set -e

echo "Deploying application to EKS..."

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment completed"
