# Brain Task App
# Project Overview
This project demonstrates a complete DevOps CI/CD pipeline using Docker, AWS CodeBuild, CodePipeline, and Kubernetes (EKS).

# Tech Stack
- Docker
- Docker Hub
- AWS EKS
- Kubernetes
- AWS CodeBuild
- AWS CodePipeline
- AWS CloudWatch
- GitHub

# Application Setup
- Application runs on port 3000
- Dockerized using Dockerfile
- Image pushed to Docker Hub

# CI/CD Pipeline Flow
1. Source: GitHub
2. Build: AWS CodeBuild
   - Builds Docker image
   - Pushes image to Docker Hub
3. Deploy: AWS CodeBuild (kubectl)
   - Deploys application to EKS cluster

# Kubernetes Deployment
- Deployment and Service YAML files are used
- Service type: LoadBalancer
- Application is exposed publicly

# Monitoring & Logging
# Build & Deploy Monitoring
- CloudWatch Log Groups:
  - /aws/codebuild/brain-task-build
  - /aws/codebuild/brain-task-deploy

# Application Monitoring
- Pod health:
  kubectl get pods
- Runtime logs:
  kubectl logs <pod-name>

# Kubernetes LoadBalancer
LoadBalancer ARN:
http://afca0197e730545d4a710be95e05b246-1951285638.ap-south-1.elb.amazonaws.com/

Application URL:
http://afca0197e730545d4a710be95e05b246-1951285638.ap-south-1.elb.amazonaws.com/:3000

