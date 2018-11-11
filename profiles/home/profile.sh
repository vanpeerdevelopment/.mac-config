#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export HOME_PROFILE_HOME="$PROFILES_HOME/home"
export HOME_PROFILE="$HOME_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$HOME_PROFILE"

## User
export GIT_USER_NAME="vanpeerdevelopment"
export GIT_USER_EMAIL="dieter@vanpeerdevelopment.be"


# Execution
## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"