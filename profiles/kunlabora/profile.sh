#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export KUNLABORA_PROFILE_HOME="$PROFILES_HOME/kunlabora"
export KUNLABORA_PROFILE="$KUNLABORA_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$KUNLABORA_PROFILE"

## User
export GIT_USER_NAME="dieter-kunlabora"
export GIT_USER_EMAIL="dieter.vanpeer@kunlabora.be"


# Execution
## Profile
alias reload-profile="source $KUNLABORA_PROFILE"

## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"