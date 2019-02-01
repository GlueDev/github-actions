workflow "Default" {
  on = "push"
  resolves = "Build"
}

action "Authenticate" {
  uses = "./authenticate"
  secrets = ["GCLOUD_AUTH"]
}

action "Build" {
  needs = ["Authenticate"]
  uses = "./build"
}
