FROM google/cloud-sdk:slim

LABEL "com.github.actions.name" = "Authenticate"
LABEL "com.github.actions.description" = "Only run on certain branches"
LABEL "com.github.actions.icon" = "unlock"
LABEL "com.github.actions.color" = "gray-dark"

LABEL "repository" = "https://github.com/gluedev/github-actions"
LABEL "homepage" = "https://glue.group"
LABEL "maintainer" = "Diederik van den Burger <diederik@glue.group>"

RUN curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
RUN sh /tmp/get-docker.sh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
