#!/bin/bash -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")
export ENV_FILE=".env$1"

cp ./.env.$APP_ENV ".tempenv" || true
rm ./.env* || true
cp ./.tempenv $ENV_FILE
rm ./.tempenv
