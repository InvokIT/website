#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t eu.gcr.io/invokit-web/www ${DIR}/../

gcloud docker push eu.gcr.io/invokit-web/www