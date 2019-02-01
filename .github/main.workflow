workflow "Default" {
  on = "push"
  resolves = "Debug"
}

action "Authenticate" {
  uses = "./authenticate"
  secrets = ["GCLOUD_AUTH"]
  env = {
    CLUSTER_NAME = "clienst-cluster"
    CLUSTER_PROJECT = "glue-clients"
    CLUSTER_REGION = "europe-west4-a"
  }
}

action "Build" {
  needs = ["Authenticate"]
  uses = "./build"
}

action "Debug" {
  needs = ["Build"]
  uses = "actions/bin/debug@master"
}
