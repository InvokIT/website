#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gsutil -m rsync -c -d -r ${DIR}/../www gs://www.invokit.dk/

gsutil -m acl ch -r -u AllUsers:R gs://www.invokit.dk/