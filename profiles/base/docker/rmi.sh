#!/usr/bin/env bash

docker rmi -f $(docker images -qa)
