#!/usr/bin/env bash

# Configuration
## General
export PROFILES_HOME="$(dirname $0)/.."
export BASE_PROFILE_HOME="$PROFILES_HOME/base"
export BASE_PROFILE="$BASE_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$BASE_PROFILE"


# Execution
## Profile
alias reload-profile='source $CURRENT_PROFILE'

## Docker
alias docker-rm='docker rm -vf $(docker ps -qa)'
alias docker-rmi='docker rmi -f $(docker images -qa)'
alias start-oracle="source $BASE_PROFILE_HOME/docker/start-oracle.sh"