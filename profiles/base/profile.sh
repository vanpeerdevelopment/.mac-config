#!/usr/bin/env bash

# Configuration
## General
export MAC_CONFIG_HOME="$(dirname $0)/../.."
export PROFILES_HOME="$MAC_CONFIG_HOME/profiles"
export BASE_PROFILE_HOME="$PROFILES_HOME/base"
export BASE_PROFILE="$BASE_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$BASE_PROFILE"
export PATH="$MAC_CONFIG_HOME/bin:$PATH"


# Execution
## Profile
alias reload-profile='source $CURRENT_PROFILE'

# General
alias cls='clear'

## update
function update-mac-config() {
  pushd $MAC_CONFIG_HOME
  git pull
  popd
}

function update-brew() {
  pushd "$MAC_CONFIG_HOME/homebrew"
  brew bundle
  popd
}

## oh-my-zsh
function add-custom-plugin() {
    pushd $MAC_CONFIG_HOME/zsh/plugins
    git submodule add $1
    popd
}

## gpg
function gpg-list() {
  gpg --list-secret-keys --keyid-format=long
}

function gpg-new() {
  gpg --full-generate-key
}

function gpg-public() {
  local GPG_KEY_ID="${1}"

  gpg --armor --export $GPG_KEY_ID
}

function gpg-public-clipboard() {
  local GPG_KEY_ID="${1}"

  gpg-public $GPG_KEY_ID | pbcopy
}

function gpg-git-home-config() {
  local GPG_KEY_ID="${1}"
  local USER_NAME="vanpeerdevelopment"
  local USER_EMAIL="dieter@vanpeerdevelopment.be"

  gpg-git-config $USER_NAME $USER_EMAIL $GPG_KEY_ID
}

function gpg-git-kunlabora-config() {
  local GPG_KEY_ID="${1}"
  local USER_NAME="dieter-kunlabora"
  local USER_EMAIL="dieter.vanpeer@kunlabora.be"

  gpg-git-config $USER_NAME $USER_EMAIL $GPG_KEY_ID
}

function gpg-git-config() {
  local USER_NAME="${1}"
  local USER_EMAIL="${2}"
  local GPG_KEY_ID="${3}"

  git config user.name $USER_NAME
  git config user.email $USER_EMAIL
  git config user.signingkey $GPG_KEY_ID
  git config commit.gpgsign true
  git config tag.gpgSign true
}

## Docker
alias docker-rm='docker rm -vf $(docker ps -qa)'
alias docker-rmi='docker rmi -f $(docker images -qa)'