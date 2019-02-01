#!/bin/sh

echo "$GCLOUD_AUTH" | base64 -d > "$HOME"/gcloud.json

gcloud auth activate-service-account --key-file=$HOME/gcloud.json
gcloud auth configure-docker --quiet
gcloud container clusters get-credentials $CLUSTER_NAME --zone $CLUSTER_REGION --project $CLUSTER_PROJECT
