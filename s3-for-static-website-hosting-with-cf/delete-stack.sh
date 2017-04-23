#!/usr/bin/env bash

StackName=$(cat template.parameters.json | jq -r '.StackName')
aws cloudformation delete-stack --stack-name $StackName 