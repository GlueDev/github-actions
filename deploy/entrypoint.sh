#!/bin/bash -l

export APP_ENV=$([[ $GITHUB_REF == *"master" ]] && echo "production" || echo "staging")
export SHORT_SHA=$(echo $GITHUB_SHA | head -c7)

docker push $CONTAINER_URL:$SHORT_SHA
docker push $CONTAINER_URL:$APP_ENV
kubectl set image deployment $APP_DEPLOYMENT $APP_DEPLOYMENT=$CONTAINER_URL:$SHORT_SHA -n $APP_PROJECT-$APP_ENV
