#!/usr/bin/env bash

params=$(cat template.parameters.json | jq -r '.Parameters[] | "ParameterKey=" + .Name + ",ParameterValue=" + .Value')
tags=$(cat template.parameters.json | jq -r '.Tags[] | "Key=" + .Key + ",Value=" + .Value')

StackName=$(cat template.parameters.json | jq -r '.StackName')
aws cloudformation create-stack --stack-name $StackName --capabilities "CAPABILITY_NAMED_IAM" --region "us-west-2" --template-body file://template.json --parameters $params --tags $tags --profile malabs

