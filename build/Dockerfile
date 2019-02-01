FROM docker:dind

LABEL "com.github.actions.name" = "Build"
LABEL "com.github.actions.description" = "Build the container"
LABEL "com.github.actions.icon" = "targert"
LABEL "com.github.actions.color" = "gray-dark"

LABEL "repository" = "https://github.com/gluedev/github-actions"
LABEL "homepage" = "https://glue.group"
LABEL "maintainer" = "Diederik van den Burger <diederik@glue.group>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
