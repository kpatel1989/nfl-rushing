#!/usr/bin/env bash

FULLPATH=$(realpath "$0")
BASEDIR=$(dirname "$FULLPATH")
#rm -Rf pgdata
echo 'starting postgres container...'
echo "$BASEDIR"
docker run \
  --detach \
  --name postgres \
  -p 5432:5432 \
  --rm \
  -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres \
  -v $BASEDIR/pgdata:/var/lib/postgresql/data \
  postgres:10.3 &
