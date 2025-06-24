#!/bin/bash

# Prerequisite: setup name
cluster_name="kind-lp-cluster"

# Step 1: Check if cluster is running and has the correct name
output=$(kubectl config current-context)

# Compare the output with the literal string "abc"
if [ "$output" != "$cluster_name" ]; then
    exit 1
fi

# Step 2: Check if kubctl get po is running successfully
cmd_output=$(kubectl get po)
# Check the exit status
if [ $? -ne 0 ]; then
  exit 1
fi

# If the script reaches to here it'll exit with success
echo "Successful exit"
exit 0