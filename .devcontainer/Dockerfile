# Use a Python 3.10 base image
FROM python:3.10-slim-bullseye

# Set environment variables to prevent interactive prompts during package installation
ENV PYTHONUNBUFFERED=1     PIP_NO_CACHE_DIR=off     DEBIAN_FRONTEND=noninteractive

# System dependencies that might be needed by dbt or its adapters, or for general development
RUN apt-get update && apt-get install -y --no-install-recommends     git     ssh-client     && apt-get clean     && rm -rf /var/lib/apt/lists/*

# Create a non-root user 'vscode' and give it sudo privileges
# The user ID 1000 is common for the first non-root user in Linux systems.
RUN useradd -m -s /bin/bash -u 1000 vscode     && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Copy the requirements file from the .devcontainer folder
COPY .devcontainer/requirements.txt /tmp/requirements.txt

# Install Python packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Switch to the non-root user
USER vscode

# Set the working directory
WORKDIR /workspaces/${localWorkspaceFolderBasename}

# This Dockerfile primarily sets up the OS, Python, user, and Python dependencies.
CMD ["sleep", "infinity"]
