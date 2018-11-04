#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export SPARKCENTRAL_PROFILE_HOME="$PROFILES_HOME/sparkcentral"
export SPARKCENTRAL_PROFILE="$SPARKCENTRAL_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$SPARKCENTRAL_PROFILE"

## User
export GIT_USER_NAME="dieterv_sc"
export GIT_USER_EMAIL="dieter.v@sparkcentral.com"


# Execution
## Profile
alias reload-profile="source $SPARKCENTRAL_PROFILE"

## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"