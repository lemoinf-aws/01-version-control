#!/bin/bash

stack_name="cloud9-stack"
region="us-east-1"

aws cloudformation create-stack \
    --stack-name $stack_name \
    --template-body file://cloud9-cloudformation.yaml \
    --region $region
