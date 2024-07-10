#!/bin/bash

# Get frontend service URL
NODE_PORT=$(kubectl get services/frontend-service -o=jsonpath='{.spec.ports[0].nodePort}')
NODE_IP=$(minikube ip)
FRONTEND_URL="http://$NODE_IP:$NODE_PORT"

# Fetch greeting from frontend
RESPONSE=$(curl -s $FRONTEND_URL)

# Check if the response contains the expected greeting
EXPECTED_GREETING="Hello from backend" # Adjust based on expected message
if echo "$RESPONSE" | grep -q "$EXPECTED_GREETING"; then
  echo "Test Passed: Greeting message is correct."
  exit 0
else
  echo "Test Failed: Greeting message is incorrect."
  exit 1
fi



