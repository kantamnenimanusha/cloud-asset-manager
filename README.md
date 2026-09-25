# Cloud Asset Manager

A Bash-based AWS Cloud Asset Manager that collects information about AWS resources and generates an inventory report automatically.

## Features

- Lists S3 buckets
- Lists EC2 instances
- Lists Lambda functions
- Lists VPCs
- Lists subnets
- Lists security groups
- Generates an AWS inventory report
- Automates execution using Linux cron

## Technologies Used

- Bash / Shell Scripting
- AWS CLI
- AWS IAM
- Linux
- Cron
- Git & GitHub

## AWS Services

- Amazon S3
- Amazon EC2
- AWS Lambda
- Amazon VPC

## How It Works

1. The Bash script uses AWS CLI commands to retrieve cloud resource information.
2. The collected information is saved in an inventory report.
3. Cron automatically executes the script on a scheduled basis.
4. The report is updated with the latest AWS resource information.

## Run the Project

```bash
./cloud_asset_manager.sh
