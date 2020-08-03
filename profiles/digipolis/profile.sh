#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export DIGIPOLIS_PROFILE_HOME="$PROFILES_HOME/digipolis"
export DIGIPOLIS_PROFILE="$DIGIPOLIS_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$DIGIPOLIS_PROFILE"

## User
export GIT_USER_NAME="Dieter Van Peer"
export GIT_USER_EMAIL="dieter.vanpeer@digipolis.be"


# Execution
## Git
alias git="git -c user.name='$GIT_USER_NAME' -c user.email='$GIT_USER_EMAIL'"