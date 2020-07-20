#! /bin/bash

set -euo pipefail

# Ask for the Harbor FQDN and port
echo "Enter the FQDN (e.g. harbor.domain.com) of your Harbor registry:"

read REGISTRY

# Create folder for custom certificate as described in Docker docs https://docs.docker.com/engine/security/certificates/
mkdir -p /etc/docker/certs.d/$REGISTRY

# Download Registry Root Certificate
wget -O /etc/docker/certs.d/$REGISTRY/ca.crt https://$REGISTRY/api/v2.0/systeminfo/getcert --no-check-certificate

# Restart Docker service
systemctl restart docker
