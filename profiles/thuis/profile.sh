#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export THUIS_PROFILE_HOME="$PROFILES_HOME/thuis"
export THUIS_PROFILE="$THUIS_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$THUIS_PROFILE"

## User
export GIT_USER_NAME="vanpeerdevelopment"
export GIT_USER_EMAIL="dieter@vanpeerdevelopment.be"


# Execution
## Profile
alias reload-profile="source $THUIS_PROFILE"

## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"
