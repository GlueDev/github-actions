#!/bin/bash -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")
export SHORT_SHA=$(echo $GITHUB_SHA | head -c7)

sh -c "ls -lah $HOME"
sh -c "docker push $CONTAINER_URL:$SHORT_SHA"
sh -c "kubectl set image deployment $APP_DEPLOYMENT $CONTAINER_URL:$SHORT_SHA -n $APP_PROJECT-$APP_ENV"
