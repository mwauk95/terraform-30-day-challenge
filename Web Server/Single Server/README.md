# Terraform AWS Deployment — Quick Start Guide

## Project Structure
```
terraform-aws/
├── provider.tf    # AWS provider & Terraform version config
├── main.tf        # EC2 instance resource
├── variables.tf   # Input variables
├── outputs.tf     # Output values (IP, DNS, ID)
└── README.md      # This file
```

## Prerequisites
1. Terraform installed on your machine
2. AWS IAM credentials ready

## Step 1 — Set AWS Credentials (Ubuntu)
```bash
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

## Step 2 — Initialise Terraform
```bash
terraform init
```

## Step 3 — Preview Changes
```bash
terraform plan
```

## Step 4 — Deploy
```bash
terraform apply
```
Type `yes` when prompted.

## Step 5 — Destroy (when done)
```bash
terraform destroy
```

## ⚠️ Important Notes
- The AMI ID `ami-0fb653ca2d3203ac1` is for **us-east-2 (Ohio) ONLY**
- If you change the region in provider.tf, update the AMI ID in variables.tf too
- `t2.micro` is Free Tier eligible for the first 12 months
