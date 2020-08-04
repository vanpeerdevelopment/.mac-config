#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export KBC_PROFILE_HOME="$PROFILES_HOME/kbc"
export KBC_PROFILE="$KBC_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$KBC_PROFILE"

## User
export GIT_USER_NAME="JE79767"
export GIT_USER_EMAIL="dieter.vanpeer@kbc.be"


# Execution
## Git
alias git="git -c user.name='$GIT_USER_NAME' -c user.email='$GIT_USER_EMAIL'"