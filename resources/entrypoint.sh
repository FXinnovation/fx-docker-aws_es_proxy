#!/bin/bash

# Dirty fix
export AWS_ACCESS_KEY_ID=$(echo $AWS_ACCESS_KEY_ID)
export AWS_SECRET_ACCESS_KEY=$(echo $AWS_SECRET_ACCESS_KEY)

# Running some stuff
aws-es-proxy $@
