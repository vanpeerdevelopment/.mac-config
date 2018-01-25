#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export VDAB_PROFILE_HOME="$PROFILES_HOME/vdab"
export VDAB_PROFILE="$VDAB_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$VDAB_PROFILE"

## User
export GIT_USER_NAME="dvpeer"
export GIT_USER_EMAIL="dieter.vanpeer@vdab.be"


# Execution
## Profile
alias reload-profile="source $VDAB_PROFILE"

## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"

## Maven
alias mvn="mvn --settings $VDAB_PROFILE_HOME/maven/settings.xml"
alias mvncisu="mvnci -DskipUnittests -DskipSql"
alias mvncisi="mvnci -DskipIntegrationtests -DskipSql"
alias mvncis="mvnci -DskipUnittests -DskipIntegrationtests -DskipSql"
alias mvncisdb="mvnci -DskipUnittests -DskipIntegrationtests -Pdb_init"

## Npm
alias npm="npm --userconfig $VDAB_PROFILE_HOME/npm/.npmrc"
