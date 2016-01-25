#!/bin/bash

set -e

docker build -t invokit-web-test .
echo Running on http://localhost:8080
docker run --rm -p 8080:80 invokit-web-test