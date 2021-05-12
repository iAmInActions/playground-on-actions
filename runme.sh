#!/bin/bash

# This script is for setting up ubuntu so it has the same features as playground. And for adding the http web server.

# Dependency set up
sudo apt update
sudo apt install nodejs npm wget nano git

# Forward ports
sudo npm install -g localtunnel
sudo lt --port 80 --subdomain playground-on-actions-80 &
sudo lt --port 8080 --subdomain playground-on-actions-8080 &
sudo lt --port 9443 --subdomain playground-on-actions-cli &

# Set up command line access
cd webcli
chmod +x ./mako
sudo ./mako mako -l::www
