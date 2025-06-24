#!/bin/bash

cluster_name="lp-cluster"

# Step 1: Create a kind cluster called "kind-lp-cluster"
cmd_cr_cluster=$(kind create cluster --name "$cluster_name")


# Step 2: Check if cluster is running and has the correct name
output=$(kubectl config current-context)

# Compare the output with the literal string "abc"
if [ "$output" != "$cluster_name" ]; then
    exit 1
fi

echo "Success!"
exit 0