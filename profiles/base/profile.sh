#!/usr/bin/env bash

# Configuration
## General
export PROFILES_HOME="$(dirname $0)/.."
export BASE_PROFILE_HOME="$PROFILES_HOME/base"


# Execution
## Docker
alias docker-rm="source $BASE_PROFILE_HOME/docker/rm.sh"
alias docker-rmi="source $BASE_PROFILE_HOME/docker/rmi.sh"
alias start-oracle="source $BASE_PROFILE_HOME/docker/start-oracle.sh"
