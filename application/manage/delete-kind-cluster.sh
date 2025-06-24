#!/bin/bash

cluster_name="lp-cluster"

# Step 1: Create a kind cluster called "kind-lp-cluster"
cmd_cr_cluster=$(kind delete cluster --name "$cluster_name")
if [ $? -ne 0 ]; then
  echo "Failed to delete cluster $cluster_name"
  exit 1
fi
