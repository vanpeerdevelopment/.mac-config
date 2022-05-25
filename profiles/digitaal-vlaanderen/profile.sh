#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export DIGITAAL_VLAANDEREN_PROFILE_HOME="$PROFILES_HOME/digitaal-vlaanderen"
export DIGITAAL_VLAANDEREN_PROFILE="$DIGITAAL_VLAANDEREN_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$DIGITAAL_VLAANDEREN_PROFILE"

## User
export GIT_USER_NAME="dietervanpeer"
export GIT_USER_EMAIL="dieter.vanpeer@vlaanderen.be"


# Execution
## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"

## IOM
source ~/Projects/digitaal-vlaanderen/iom-developer/cli/profile.sh

