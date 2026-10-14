#!/bin/bash
###########
# Author: Rikki
# Date: 14/10/26
#
# version: v1
#
# This script will report the usage of AWS resources
###########

set -eo pipefail

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#List S3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 Instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list Lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "print list of IAM users"
aws iam list-users
