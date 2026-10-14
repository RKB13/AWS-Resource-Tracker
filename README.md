# AWS-Resource-Tracker
Basic bash scripting project that helps monitor AWS resources for cloud cost effectiveness. By automating the reporting of AWS resources, organizations can avoid unnecessary costs associated with unused services.

## Overview

A Bash-based AWS Resource Tracker that automates the reporting of AWS resources using the AWS CLI.

The script retrieves information about EC2 instances, S3 buckets, Lambda functions, and IAM users, providing a simple overview of the resources within an AWS account.

This project explores how shell scripting can help DevOps engineers monitor cloud infrastructure, identify potentially unused resources, and improve cost efficiency.

## Technologies Used

- **Bash** – Automates AWS resource reporting.
- **AWS CLI** – Retrieves resource information from AWS.
- **JQ** – Parses JSON output to extract relevant information.
- **Linux** – Provides the environment for running the script.
- **Cron** – Schedules automated daily reports.

## Features

- Retrieves a list of EC2 instances.
- Lists S3 buckets.
- Retrieves Lambda functions.
- Lists IAM users.
- Uses JQ to extract relevant information from AWS CLI output.
- Supports debugging using Bash's `set -x` option.
- Can be scheduled to run automatically using Linux Cron jobs.

## Prerequisites

Before running the script, ensure you have:

- An AWS account with the appropriate IAM permissions.
- AWS CLI installed and configured.
- Bash installed.
- JQ installed.

## Usage

1. Clone this repository:

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Make the script executable:

   ```bash
   chmod +x aws_resource_tracker.sh
   ```

3. Run the script:

   ```bash
   ./aws_resource_tracker.sh
   ```

4. To schedule the script to run daily, configure a Cron job:

   ```bash
   crontab -e
   ```

   Example: run the script every day at 9:00 AM.

   ```cron
   0 18 * * * /path/to/aws_resource_tracker.sh
   ```

## What I Learned

- Using Bash to automate repetitive tasks.
- Retrieving AWS infrastructure information through the AWS CLI.
- Processing JSON data with JQ.
- Debugging shell scripts using `set -x`.
- Scheduling automated tasks with Linux Cron.
- Understanding how resource visibility can contribute to cloud cost optimisation.

## Future Improvements

- Identify resources that may be unused or underutilised.
- Generate timestamped reports and store them for historical comparison.
- Add error handling and logging.
- Send automated reports via email.
- Extend resource tracking to additional AWS services.

## Reference

This project was developed as a learning exercise, following the tutorial by Abhishek:

[Building an AWS Resource Tracker – YouTube](https://www.youtube.com/watch?v=gx5E47R9fGk&list=PLdpzxOOAlwvIc1TjTwopNSjRJkzES2ZXk&index=12)

## Disclaimer

This project is intended for educational purposes and practical skills development. AWS resources and associated costs depend on the services used and the configuration of the AWS account.
