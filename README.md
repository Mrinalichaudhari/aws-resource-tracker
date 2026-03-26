# aws resource tracker 

# Project Overview
This project is a script report the aws resource usage 

# features
List the s3 buckets
List the EC2 instances
List the Lambada functions
List the IAM users
Saves output to file
Runs automatically using cron job

# Technologies used
Bash scripting
AWS CLI
jq for JSON parsing
Linux cron job

#How to run

1 Configure AWS CLI
    aws configure

2. Give permission to file
    chomd +x aws-resource-tracker.sh

3. Run script
    ./aws-resource-tracker.sh

## Automation with cron job
    */5 * * * * /home/ubuntu/aws-resource-tracker.sh

