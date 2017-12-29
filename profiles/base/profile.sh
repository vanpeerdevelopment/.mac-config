#!/usr/bin/env bash

# Configuration
## General
export PROFILES_HOME="$(dirname $0)/.."
export BASE_PROFILE_HOME="$PROFILES_HOME/base"


# Execution
## Docker
alias start-oracle="source $BASE_PROFILE_HOME/docker/start-oracle.sh"
