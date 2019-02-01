#!/bin/bash -l

if [[ $GITHUB_REF != *"master" && $GITHUB_REF != *"develop" ]]; then
    echo "Not in master or develop branch, skipping build";
    exit 78;
else
    exit 0;
fi;
