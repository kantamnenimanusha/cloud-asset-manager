#!/bin/bash

####################
#Author:Manusha
#Date:25-sept-26

#script to  find running resources in aws
##################

set -x

report="report/aws_inventory.txt"

>"$report"

echo "----------------" >> "$report"
echo "  AWS CLOUD ASSET REPORT " >> "$report"
echo "Generated on: $(date)" >> "$report"
echo "Region: $(aws configure get region)" >> "$report"
echo "" >> "$report"



#list s3  buckets
echo "listing all the available s3 buckets" >> "$report"
aws s3 ls >> "$report"

#list ec2 instances
echo "listing all the available ec2 instances" >> "$report"
aws ec2 describe-instances >> "$report"

#list lambda functions
echo "listing all the available lambda functions" >> "$report"
aws lambda list-functions >> "$report"

#list VPCs
echo "listing all the available vpcs" >> "$report"
aws ec2 describe-vpcs >> "$report"

#list subnets
echo "listing all the available subnets" >> "$report"
aws ec2 describe-subnets >> "$report"

#list security groups
echo "listing all the available security groups" >> "$report"
aws ec2 describe-security-groups >> "$report"



