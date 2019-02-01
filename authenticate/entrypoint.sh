#!/bin/sh

set -e
echo "$GCLOUD_AUTH" | base64 -d > "$HOME"/gcloud.json

sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json"
sh -c "gcloud auth configure-docker --quiet"
sh -c "gcloud container clusters get-credentials $CLUSTER_NAME --zone $CLUSTER_REGION --project $CLUSTER_PROJECT"
