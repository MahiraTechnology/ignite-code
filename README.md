#                                                             Kubernetes Cluster Setup and Deployment Guide

This guide will walk you through the process of setting up a Kubernetes cluster using Kind (Kubernetes in Docker), deploying a sample Node.js application using Terraform, and setting up monitoring using the kube-prometheus stack. We will also dockerize the Node.js application and deploy it to Docker Hub. Additionally, we will create Kubernetes deployment manifests and deploy them to the Kind cluster using Terraform.

Prerequisites
Before you begin, make sure you have the following prerequisites installed on your machine:

Docker
Terraform
kubectl
Helm 

Steps
1. Setup a Kubernetes Cluster using Kind
First, Create a Kind cluster using Bash script.

2. Dockerize the Node.js App and Push to Docker Hub
Dockerize your Node.js application by creating a Dockerfile and building a Docker image. Push the Docker image to Docker Hub or your preferred container registry.

# Build the Docker image
docker build -t your-username/nodejs-app:latest .

# Push the Docker image to Docker Hub (replace with your image name)
docker push your-username/sample-nodejs-app:latest

3. Create Kubernetes Deployment Manifests
Write Kubernetes deployment manifests for your Node.js application. Define the deployment, service, and any other required resources in YAML files.

4. Deploy a Sample Node.js App using Terraform
Next, we will deploy a sample Node.js application to the Kind cluster using Terraform. Create a Terraform configuration file (e.g., main.tf) with the necessary resources and configurations. Refer to the Terraform documentation for guidance on creating Kubernetes resources.

5. Deploy Kubernetes Manifests using Terraform
Use the kubectl Terraform provider to deploy the Kubernetes manifests to the Kind cluster. Create a Terraform configuration file for deploying the manifests and run terraform apply to apply the changes.

6. Bonus: Setup Monitoring and Observability
To set up monitoring and observability using the kube-prometheus stack, use the Helm Terraform provider. Write a Terraform configuration that deploys the kube-prometheus stack to your Kind cluster. Don't forget to customize the Helm values to fit your requirements.

Usage
After completing these steps, you will have a fully operational Kind cluster with your Node.js application deployed. You can access your application and monitor its performance using the provided monitoring setup.

Remember to store the kubeconfig for your Kind cluster in a safe place, as it will be required for future interactions with the cluster.

Feel free to customize and extend this guide to meet your specific requirements and preferences.

##  Nodejs app 
kubectl port-forward deployment/nodejs-app 8080:8080

## promethesus stack
kubectl port-forward -n default svc/kube-prometheus-kube-prome-prometheus 9090:9090