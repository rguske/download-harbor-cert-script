#! /bin/bash

set -euo pipefail

# Ask for the Harbor FQDN and port
echo "Enter the FQDN and port (harbor.domain.com:443) of your Harbor registry:"

read REGISTRY

# Create folder for custom certificate as described in Docker docs https://docs.docker.com/engine/security/certificates/
mkdir -p /etc/docker/certs.d/$REGISTRY

# Download Registry Root Certificate
wget -O etc/docker/certs.d/$REGISTRY/ca.crt https://$REGISTRY/api/systeminfo/getcert --no-check-certificate

# Restart Docker service
systemctl restart docker
