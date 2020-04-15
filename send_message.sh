#!/bin/bash

if [ "$#" -ne 1 ];
then

  echo "Error: supply AWS profile to use"
  exit 1
fi

PROFILE=$1

QUEUE_URL="https://sqs.us-east-1.amazonaws.com/472521221391/terraform-templates-sqs"



aws --profile ${PROFILE} sqs send-message --queue-url ${QUEUE_URL} --message-body "Hello World"