#!/bin/sh
image_name=$1
curl -s https://registry.hub.docker.com/v1/repositories/${image_name}/tags | jq ".[].name" | sed -e "s/\"//g"
