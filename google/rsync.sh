#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}/.. && npm run build

gsutil -m rsync -c -d -r ${DIR}/../www/build gs://www.invokit.dk/

gsutil -m acl ch -r -u AllUsers:R gs://www.invokit.dk/