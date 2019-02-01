FROM google/cloud-sdk:slim

LABEL "com.github.actions.name" = "Deploy"
LABEL "com.github.actions.description" = "Deploy the container to GCR and Kubernetes"
LABEL "com.github.actions.icon" = "arrow-up-circle"
LABEL "com.github.actions.color" = "green"

LABEL "repository" = "https://github.com/gluedev/github-actions"
LABEL "homepage" = "https://glue.group"
LABEL "maintainer" = "Diederik van den Burger <diederik@glue.group>"

RUN curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
RUN sh /tmp/get-docker.sh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
