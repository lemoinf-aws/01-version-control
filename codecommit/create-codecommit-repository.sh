#!/bin/bash

stack_name="codecommit-stack"
region="us-east-1"

aws cloudformation create-stack \
    --stack-name $stack_name \
    --template-body file://codecommit-cloudformation.yaml \
    --capabilities CAPABILITY_NAMED_IAM \
    --region $region
