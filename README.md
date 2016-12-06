# Demo App for CICD Experimentation

This is a sample application used as part of the [CICD Learning Lab](https://github.com/imapex-training/cicd_learning_lab).  This lab walks the user through setting up a full CICD pipeline that will monitor a GitHub repo for changes and build a container based on the changes, publish it to Docker Hub, update a _Production_ app deployment and leverage Cisco Spark to update on status.

The application itself is a very basic "Hello World" application written in Python and leveraging Flask as an interface.

This repo includes the following resources:

## Repo Information
* README.md
  * This document
* .gitignore
  * Standard gitignore file to prevent commiting unneeded or security risk files

## CICD Build Configuration
* .drone.yml
  * CICD Build instructions for Drone Server
* drone_secrets_sample.yml
  * template for the secrets file that will be used to encrypt credentials

## Application Files
* Dockerfile
  * Docker build file for applicaiton container
* requirements.txt
  * pip installation requirements
* demoapp.py
  * Actual application code

## Deployment Scripts
* app_install.sh
  * Bash script to install the application to Marathon running on Mantl
* app_uninstall.sh
  * Bash script to uninstall the application to Marathon running on Mantl
* sample-demoapp.json
  * template for the application installation
