#!/bin/bash
#
#####################
#Author: Mrinali
#Version: 1
#This script report the aws resource usage.
####################


# AWS s3
# AWS EC2
# AWS lambada
# AWS IAM users

set -x
# list s3 bucket
echo "print the list of s3 buckets"
aws s3 ls > resourceTracker.txt

# list EC2 instances 
echo "print the list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt


# list aws lambda funstion
echo "print the list of lambda funtion"
aws lambda list-functions >> resourceTracker.txt

# list IAM users
echo "print the list of IAM users"
aws iam list-users
