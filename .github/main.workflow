workflow "Default" {
  on = "push"
  resolves = "Debug"
}

action "Authenticate" {
  uses = "./authenticate"
  secrets = ["GCLOUD_AUTH"]
}

action "Build" {
  needs = ["Authenticate"]
  uses = "./build"

  env = {
    CLUSTER_NAME = "clienst-cluster"
    CLUSTER_PROJECT = "glue-clients"
    CLUSTER_REGION = "europe-west4-a"
  }
}

action "Debug" {
  needs = ["Build"]
  uses = "actions/bin/debug"
}
