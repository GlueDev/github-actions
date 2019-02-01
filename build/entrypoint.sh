#!/bin/sh -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")
export SHORT_SHA=$(echo $GITHUB_SHA | head -c7)

sh -c "ls -lah $HOME && whoami && ls -lah ~/"

#sh -c "docker build \
#    -t $CONTAINER_URL:latest \
#    -t $CONTAINER_URL:$SHORT_SHA \
#    -t $CONTAINER_URL:$APP_ENV \
#    --cache-from $CONTAINER_URL:$APP_ENV ."
