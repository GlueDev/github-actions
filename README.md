# Github Actions
This repository contains several custom GitHub actions for [Glue](https://glue.group).

## 1. Configure
Copies the correct environment file/settings.
This action also adds the shortened git sha to the environment variables of the app.

## 2. Build
Builds and tags the Docker container

**Environment variables**:
- `CONTAINER_URL`

## 3. Test
This action is not ready yet.

## 4. Filter
This action stops the workflow if the source branch is not develop or master.

## 5. Authenticate
Authenticate to Google for Docker Registry and Kubernetes access
**Environment variables**:
- `CLUSTER_NAME`
- `CLUSTER_PROJECT`
- `CLUSTER_REGION`

## 6. Deploy
Pushes the container to Google and updates the Kubernetes deployment image.

**Environment variables**:
- `CONTAINER_URL`
- `APP_DEPLOYMENT`
- `APP_PROJECT`
