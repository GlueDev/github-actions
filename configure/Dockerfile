FROM debian:9.5

LABEL "com.github.actions.name" = "Configure"
LABEL "com.github.actions.description" = "Attaches the correct environment settings"
LABEL "com.github.actions.icon" = "settings"
LABEL "com.github.actions.color" = "gray-dark"

LABEL "repository" = "https://github.com/gluedev/github-actions"
LABEL "homepage" = "https://glue.group"
LABEL "maintainer" = "Diederik van den Burger <diederik@glue.group>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
