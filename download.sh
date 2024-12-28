#!/bin/bash

echo "Downloading RIX source code ..."

if [ -z "$1" ]; then
    read -sp "Please enter your GitHub Personal Access Token: " GITHUB_PAT
    echo
else
    GITHUB_PAT=$1
fi

if [ -z "$GITHUB_PAT" ]; then
    echo "GitHub Personal Access Token is required"
    exit 1
fi

# Clone repositories
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-util
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-msg
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-ipc
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-core
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-py
git clone https://${GITHUB_PAT}@github.com/rix-ros/rix-js

echo "Download complete"