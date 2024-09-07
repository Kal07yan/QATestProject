**QA Test Project**

**Overview**

This project sets up and tests a frontend and backend service on a local Kubernetes cluster using Minikube.

**Prerequisites**

1. Minikube
2. Kubectl
3. Git
4. Curl

**Setup**

**Step 1: Start Minikube**

```sh
minikube start

# Step 2: Clone the Repository
  git clone https://github.com/Vengatesh-m/qa-test.git
  cd qa-test

# Step 3: Deploy the Services
  kubectl apply -f k8s/backend-deployment.yaml
  kubectl apply -f k8s/backend-service.yaml
  kubectl apply -f k8s/frontend-deployment.yaml
  kubectl apply -f k8s/frontend-service.yaml

# Verification

# Step 4: Get Frontend Service URL
  minikube service frontend-service

# Step 5: Access Frontend URL
 Access the frontend URL provided by Minikube and check if it displays the greeting message fetched from the backend.

# Automated Testing

# Step 6: Run the Test Script

  chmod +x test.sh
  ./test.sh
This script will verify if the frontend correctly displays the message returned by the backend.


