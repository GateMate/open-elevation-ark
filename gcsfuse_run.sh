#!/usr/bin/env bash

set -eo pipefail

mkdir -p $MNT_DIR

gcsfuse --debug_gcs --debug_fuse $BUCKET $MNT_DIR

echo "MOUNTING COMPLETED"

exec python3 server.py

wait -n
