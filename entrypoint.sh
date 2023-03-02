#!/bin/sh

echo "IN ENTRYPOINT"
./retrieve_data.sh

./create-tiles.sh ./data/*.tif 10 10

exec "$@"
