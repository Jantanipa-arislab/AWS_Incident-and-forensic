#!/bin/bash

#I'll find abusive activities on my AWS and I'll send him to the real jail
#Love me , Love my sedab babi.

#date format YYYY-MM-DD
DATE_SINCE=2021-04-01

# list of all available regions by APR 1sth 2021
REGIONS="ca-central-1  ap-east-1 ap-south-1 ap-northeast-3 ap-northeast-2 ap-southeast-1 ap-southeast-2 ap-northeast-1 ap-northeast-1 eu-central-1 eu-west-1 eu-west-2 eu-south-1 eu-west-3 eu-north-1 sa-east-1 us-east-2 us-east-1 us-west-1 us-west-2"

for i in $REGIONS;
do
echo "####### Instances launched since $DATE_SINCE in $i #######"
aws ec2 describe-instances --region $i --query "Reservations[].Instances[?LaunchTime>=\`$DATE_SINCE\`][].{id: InstanceId, type: InstanceType, launched: LaunchTime}";
done

# get new instance console output log
# aws ec2 get-console-output --region ap-southeast-1 --instance-id aja-takut-mokat-by-babi
