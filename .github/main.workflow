workflow "Default" {
  on = "push"
  resolves = "Build"
}

action "Authenticate" {
  uses = "./.github/authenticate"
  secrets = ["GCLOUD_AUTH"]
}

action "Build" {
  needs = ["Authenticate"]
  uses = "./.github/build"
}
