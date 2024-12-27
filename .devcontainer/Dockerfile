FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install additional packages
RUN apt-get update && apt-get install -y \
  dnsutils \
  wget \
  traceroute \
  && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /workspace

# Set default shell to bash
SHELL ["/bin/bash", "-c"]