#!/usr/bin/env bash

# Load base profile
source "$(dirname $0)/../base/profile.sh"


# Configuration
## General
export KBC_PROFILE_HOME="$PROFILES_HOME/kbc"
export KBC_PROFILE="$KBC_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$KBC_PROFILE"

## User
export GIT_USER_NAME="Dieter Van Peer"
export GIT_USER_EMAIL="dieter.vanpeer@kbc.be"


# Execution
## Git
alias git="git -c user.name='$GIT_USER_NAME' -c user.email='$GIT_USER_EMAIL'"

## Maven
alias mvn="mvn -s $KBC_PROFILE_HOME/.m2/settings.xml"

## AWS
alias aws_katecicd='export AWS_DEFAULT_PROFILE="katecicd" AWS_PROFILE="katecicd" && while security delete-internet-password -l "git-codecommit.eu-west-1.amazonaws.com"; do; done && aws-adfs login'
alias aws_katedev='export AWS_DEFAULT_PROFILE="katedev" AWS_PROFILE="katedev" && while security delete-internet-password -l "git-codecommit.eu-west-1.amazonaws.com"; do; done && aws-adfs login'
alias aws_kateacc='export AWS_DEFAULT_PROFILE="kateacc" AWS_PROFILE="kateacc" && while security delete-internet-password -l "git-codecommit.eu-west-1.amazonaws.com"; do; done && aws-adfs login'
alias aws_katepro='export AWS_DEFAULT_PROFILE="katepro" AWS_PROFILE="katepro" && while security delete-internet-password -l "git-codecommit.eu-west-1.amazonaws.com"; do; done && aws-adfs login'

alias login_cicd='aws-adfs login --profile=katecicd'
alias login_dev='aws-adfs login --profile=katedev'
alias login_acc='aws-adfs login --profile=kateacc'
alias login_pro'aws-adfs login --profile=katepro'

