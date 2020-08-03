#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export SPARKCENTRAL_PROFILE_HOME="$PROFILES_HOME/sparkcentral"
export SPARKCENTRAL_PROFILE="$SPARKCENTRAL_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$SPARKCENTRAL_PROFILE"

## User
export GIT_USER_NAME="dietervp"
export GIT_USER_EMAIL="dieter.v@sparkcentral.com"
export _SC_VAULT_TOKEN="..."


# Execution
## eng-tools
export ENG_TOOL_DIR="/Users/dietervp/Projects/sparkcentral/eng-tools"
export PATH="$HOME/go/bin:$ENG_TOOL_DIR/bin:$PATH"
source "$ENG_TOOL_DIR/src/.profilerc"

## Git
alias git="git -c user.name=$GIT_USER_NAME -c user.email=$GIT_USER_EMAIL"

## Gradle
alias grcu="./gradlew cU"
alias grcd="./gradlew cD"
alias grcdu="./gradlew cD cU"
alias grb="./gradlew cD build"
alias grcb="./gradlew cD clean build"
alias grsa="./gradlew spotlessApply"
alias grun="./gradlew cD cU run"

## MySQL
function mysqldump-local() {
    mysqldump --user=$2 -p --host=127.0.0.1 --port=3306 $1 > $3
}

function mysqlimport-local() {
    pv $3 | mysql --user=$2 -p --host=127.0.0.1 --port=3306 $1
}

## Databus
function databus-url() {
    local ENV="$1"

    echo "http://databus.${ENV}.k8s-us-east-1"
}

function connectors() {
    local ENV="$1"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl ${DATABUS_URL}/connectors | jq
}

function connector() {
    local ENV="$1"
    local CONNECTOR="$2"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl ${DATABUS_URL}/connectors/${CONNECTOR} | jq
}

function connector-status() {
    local ENV="$1"
    local CONNECTOR="$2"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl ${DATABUS_URL}/connectors/${CONNECTOR}/status | jq
}

function connector-restart() {
    local ENV="$1"
    local CONNECTOR="$2"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl -X POST ${DATABUS_URL}/connectors/${CONNECTOR}/restart | jq
}

function connector-task-restart() {
    local ENV="$1"
    local CONNECTOR="$2"
    local TASK="$3"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl -X POST ${DATABUS_URL}/connectors/${CONNECTOR}/tasks/${TASK}/restart | jq
}

function connector-delete() {
    local ENV="$1"
    local CONNECTOR="$2"
    local DATABUS_URL="`databus-url ${ENV}`"

    curl -X DELETE ${DATABUS_URL}/connectors/${CONNECTOR} | jq
}