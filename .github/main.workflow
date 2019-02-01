workflow "Default" {
  on = "push"
  resolves = "Deploy"
}

action "Configure" {
  uses = "./configure"
}

action "Build" {
  needs = "Configure"
  uses = "./build"
  env = {
    CONTAINER_URL = "gcr.io/glue-clients/github-actions"
  }
}

action "Filter" {
  needs = "Build"
  uses = "./filter"
}

action "Authenticate" {
  needs = "Filter"
  uses = "./authenticate"
  secrets = ["GCLOUD_AUTH"]
  env = {
    CLUSTER_NAME = "clients-cluster"
    CLUSTER_PROJECT = "glue-clients"
    CLUSTER_REGION = "europe-west4-a"
  }
}

action "Deploy" {
  needs = "Authenticate"
  uses = "./deploy"
  env = {
    CONTAINER_URL = "gcr.io/glue-clients/github-actions"
  }
}
