#!/bin/bash

# Specify the name of your Kind cluster
CLUSTER_NAME="intern-cluster"

# Create a Kind cluster with a specific version (e.g., Kubernetes 1.21.1)
kind create cluster --name $CLUSTER_NAME --image kindest/node:v1.21.1

# Get the kubeconfig for the cluster
kind get kubeconfig --name $CLUSTER_NAME --internal > kubeconfig.yaml

# Set the kubeconfig context to the new cluster
kubectl config use-context kind-$CLUSTER_NAME