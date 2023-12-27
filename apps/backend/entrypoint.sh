#!/bin/sh

echo "======================start===================="

cd /opt/app/backend



echo DATABASE_URL=postgresql://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB?schema=public > .env

yarn start:dev
