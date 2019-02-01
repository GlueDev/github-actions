#!/bin/sh -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")
export SHORT_SHA=$(echo $GITHUB_SHA | head -c7)

cat $HOME/gcloud.json | docker login -u _json_key --password-stdin https://gcr.io
docker pull $CONTAINER_URL:$APP_ENV || true
docker build \
    -t $CONTAINER_URL:$SHORT_SHA \
    -t $CONTAINER_URL:$APP_ENV \
    --cache-from $CONTAINER_URL:$APP_ENV .
