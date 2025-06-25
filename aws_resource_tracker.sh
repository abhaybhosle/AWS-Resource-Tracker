#!/bin/bash

##############
# Author : Abhay Bhosle
# Date : 25/06/2025
#
# Version : v1
#
# This Script will report the AWS resource usage

set -x

#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list EC2 Instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

#list lambda
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
aws iam list-users

