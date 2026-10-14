# AWS-Resource-Tracker
Basic bash scripting project that helps monitor AWS resources for cloud cost effectiveness. By automating the reporting of AWS resources, organizations can avoid unnecessary costs associated with unused or not needed services.

## Overview

A Bash-based AWS Resource Tracker that automates the reporting of AWS resources using the AWS CLI.

The script retrieves information about S3 buckets, EC2 instances, Lambda functions, and IAM users, providing a simple overview of the resources within an AWS account.

This project explores how shell scripting can help DevOps engineers monitor cloud infrastructure, identify potentially unused resources, and improve cost efficiency.

## Technologies Used

- **Bash** – Automates AWS resource reporting.
- **AWS CLI** – Retrieves resource information from AWS.
- **JQ** – Parses JSON output to extract relevant information.
- **Linux** – Provides the environment for running the script.
- **Cron** – Schedules automated daily reports.

## Features

- Lists S3 buckets.
- Retrieves a list of EC2 instances.
- Retrieves Lambda functions.
- Lists IAM users.
- Uses JQ to reduce clutter & extract relevant information from AWS CLI output.
- Enforce strict error handling using Bash's `set -eo pipefail` command.
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

## issues I ran into & how to fix them!

**Problem 1:**

`aws ec2 describe-instances` handles large outputs.

By default the AWS CLI sends large text outputs to a "pager" (usually a program called `less`).

In order to display the text nicely,  `less` changes how your terminal behaves behind the scenes.

Press `q` and the program closes cleanly and restores your terminal back to its normal settings.

If you press `⌃C` to exit it will forcefully quit and not restore the terminal to its original settings.

This leaves your terminal stuck in a state where "echoing" (the setting that prints the letters you type onto the screen) is turned off.

To fix this type the command `stty echo` to fix your terminal.

**Problem 2:**

As mentioned before `aws ec2 describe-instances` handles large outputs.

in order to reduce the size and keep only the necessary information we piped the output of `aws ec2 describe-instances` into `JQ` (a lightweight, command-line tool used to parse, filter, slice, and transform JSON data). 

```bash
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
```


## Disclaimer

The script reports which resources exist, but it does not automatically determine whether they are unused or generating unnecessary costs.

