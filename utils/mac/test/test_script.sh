#!/bin/bash

softwareList=("git" "terraform" "code" "az" "aws" "mvn" "helm" "kubectl")

for software in "${softwareList[@]}"; do
    if command -v "$software" &> /dev/null; then
        echo "$software : Yes"
    else
        echo "$software : No"
    fi
done

echo " ****************************************************************** "
echo " For below tools, please do verify manually "
echo " ****************************************************************** "
echo "Azure Data Studio, DBeaver, Studio 3T, Postman"
