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

## DNS
VANPEERDEVELOPMENT_ZONE_ID="/hostedzone/ZJDVV491KMAD2"

function get-dns() {
    aws route53 get-hosted-zone --id ${VANPEERDEVELOPMENT_ZONE_ID}
}

function get-dns-records(){
    aws route53 list-resource-record-sets --hosted-zone-id ${VANPEERDEVELOPMENT_ZONE_ID}
}

function change-dns-records(){
    local FILE_NAME="$1"

    aws route53 change-resource-record-sets --hosted-zone-id ${VANPEERDEVELOPMENT_ZONE_ID} --change-batch file://${FILE_NAME}
}

function test-dns() {
    local RECORD_TYPE="$1"
    local RECORD_NAME="$2"

    aws route53 test-dns-answer --hosted-zone-id ${VANPEERDEVELOPMENT_ZONE_ID} --record-type ${RECORD_TYPE} --record-name ${RECORD_NAME}
}

## TLS
function get-certificates() {
    sudo certbot certificates
}

function delete-certificate() {
    sudo certbot delete
}

function create-nas-certificate() {
    sudo certbot certonly --manual --preferred-challenges dns -d nas.vanpeerdevelopment.be
}