#!/bin/bash

# Make sure apt repository db is up to date
sudo apt-get update

# Packages required for nomad & consul
sudo apt-get install unzip curl vim -y
