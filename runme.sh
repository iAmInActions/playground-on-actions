#!/bin/bash

# This script is for setting up ubuntu so it has the same features as playground. And for adding the http web server.

# Dependency set up
sudo apt update
sudo apt install nodejs npm wget nano git

# Forward ports
npm install -g localtunnel
lt --port 80 --subdomain playground-on-actions-80 &
lt --port 8080 --subdomain playground-on-actions-8080 &
lt --port 9443 --subdomain playground-on-actions-cli &

# Set up command line access
cd webcli
sudo ./mako mako -l::www
