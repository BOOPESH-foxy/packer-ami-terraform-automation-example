# AWS Infrastructure Automation with Packer, Terraform, and GitHub Actions

This repository demonstrates the automation of **AWS EC2 instance** deployment using **Packer** for creating custom **AMIs** and **Terraform** for provisioning infrastructure. The process is **automated using GitHub Actions** to ensure smooth CI/CD workflows.

## Overview

The project consists of the following components:

- **Packer**: Used to build a custom **Amazon Machine Image (AMI)** with Nginx installed.
- **Terraform**: Used to provision an **EC2 instance** using the AMI created by Packer.
- **GitHub Actions**: Automates the entire process — from building the AMI to provisioning the EC2 instance.

## Components

1. **Packer**:
   - **`nginx-ami.pkr.hcl`**: A Packer template that creates an AMI with Amazon Linux 2 and installs Nginx.
2. **Terraform**:
   - **`main.tf`**: Defines the infrastructure for creating an EC2 instance using the custom AMI.
   - **`variables.tf`**: Specifies input variables like AWS region and EC2 instance type.
   - **`outputs.tf`**: To output the instance public ip.
3. **.github/workflows**:
   - **`github-actions.yaml`**: CI/CD pipeline that builds the AMI and deploys the EC2 instance.

## Prerequisites

To use this repository, you'll need:

- An **AWS account** with appropriate permissions to create AMIs and EC2 instances.
- **GitHub account** to store and run the repository.
- Basic understanding of **Terraform**, **Packer**, and **AWS**.
- **GitHub Actions** enabled for automating the CI/CD pipeline.

