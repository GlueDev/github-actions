#!/bin/bash -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")

cd $GITHUB_WORKSPACE
cp .env.$APP_ENV .env.production || true
rm .env .env.staging || true
