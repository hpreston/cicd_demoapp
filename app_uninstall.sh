#! /usr/bin/env bash

echo Please provide the following details on your lab environment.
echo
echo "What is the address of your Mantl Control Server?  "
echo "eg: control.mantl.internet.com"
read control_address
echo
echo "What is the username for your Mantl account?  "
read mantl_user
echo
echo "What is the password for your Mantl account?  "
read -s mantl_password
echo
echo "What is the your Docker Username?  "
read docker_username
echo

echo "Uninstalling the demoapp at class/$docker_username"
curl -k -X DELETE -u $mantl_user:$mantl_password https://$control_address:8080/v2/apps/class/$docker_username \
-H "Content-type: application/json"
echo

