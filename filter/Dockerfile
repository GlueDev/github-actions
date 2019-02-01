FROM debian:9.5

LABEL "com.github.actions.name" = "Filter"
LABEL "com.github.actions.description" = "Only run on certain branches"
LABEL "com.github.actions.icon" = "git-branch"
LABEL "com.github.actions.color" = "gray-dark"

LABEL "repository" = "https://github.com/gluedev/github-actions"
LABEL "homepage" = "https://glue.group"
LABEL "maintainer" = "Diederik van den Burger <diederik@glue.group>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
