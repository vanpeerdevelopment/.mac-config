#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export SIEMENS_PROFILE_HOME="$PROFILES_HOME/siemens"
export SIEMENS_PROFILE="$SIEMENS_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$SIEMENS_PROFILE"

## User
export GIT_USER_NAME="dieter-kunlabora"
export GIT_USER_EMAIL="dieter.vanpeer@kunlabora.be"


# Execution
## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"