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

#adding daily report 
DATE=$(date +%d-%m-%y)

#define the report directory
REPORT_DIR="$(dirname "$0")"

# Define the report file
REPORT_FILE="$REPORT_DIR/aws-resource-tracker.log"

# Redirect all output and errors to the report file
exec > "$REPORT_FILE" 2>&1

# Report header
echo "=================================="
echo "AWS Resource Tracker"
echo "Report Date: $DATE"
echo "=================================="
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#List S3 buckets
echo "print list of s3 buckets"
aws s3 ls
echo "::::::::::::::::::::::::::::::::"

#list EC2 Instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo ":::::::::::::::::::::::::::::::::"

#list Lambda
echo "print list of lambda functions"
aws lambda list-functions
echo ":::::::::::::::::::::::::::::::::"

#list IAM users
echo "print list of IAM users"
aws iam list-users
echo ":::::::::::::::::::::::::::::::::"

echo "report complete"

