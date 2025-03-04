# My Terraform Project

This repository contains a production-grade Terraform configuration for deploying a containerized workload on AWS using ECS/Fargate, along with secure S3 buckets and CloudWatch alarms for observability. The project is structured using reusable modules and supports multiple environments (e.g., dev, staging, prod) to demonstrate best practices in Infrastructure as Code.

## Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Repository Structure](#repository-structure)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [CI/CD Pipeline](#cicd-pipeline)
- [Module Details](#module-details)
- [Best Practices & Future Improvements](#best-practices--future-improvements)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

This project demonstrates a Terraform setup for AWS deployments. It leverages modular design, automated CI/CD via GitHub Actions, and observability through CloudWatch. The goal is to deploy a containerized application using ECS/Fargate, along with secure S3 buckets and automated CloudWatch alarms.

## Key Features

- **Modular Architecture:** Reusable modules for VPC, ECS/Fargate, S3, and CloudWatch.
- **Multi-Environment Support:** Separate configuration for different environments (dev, staging, prod).
- **CI/CD Integration:** GitHub Actions pipeline for automated Terraform formatting, validation, and planning.
- **Observability:** CloudWatch logging and alarms with SNS notifications.
- **Immutable Infrastructure:** Version-controlled deployments with blue/green deployment support.

## Repository Structure

my-terraform-project/
├── environments/
│   └── dev/
│       ├── provider.tf         # AWS provider and backend configuration
│       ├── vpc.tf              # VPC module invocation
│       ├── ecs.tf              # ECS/Fargate module invocation
│       ├── s3.tf               # S3 bucket module invocation
│       ├── cloudwatch.tf       # CloudWatch alarm module invocation
│       ├── variables.tf        # Environment-specific variables
│       └── outputs.tf          # Environment outputs
├── modules/
│   ├── vpc/
│   │   ├── vpc.tf              # VPC resource definition
│   │   ├── public_subnets.tf   # Public subnets resource definitions
│   │   ├── private_subnets.tf  # Private subnets resource definitions
│   │   ├── variables.tf        # Module variables for VPC
│   │   └── outputs.tf          # Module outputs for VPC
│   ├── ecs_fargate/
│   │   ├── cluster.tf          # ECS Cluster definition
│   │   ├── iam.tf              # IAM role & policy definitions
│   │   ├── task_definition.tf  # ECS Task Definition
│   │   ├── service.tf          # ECS Service and ALB integration
│   │   ├── autoscaling.tf      # Auto Scaling configuration
│   │   ├── variables.tf        # Module variables for ECS/Fargate
│   │   └── outputs.tf          # Module outputs for ECS/Fargate
│   ├── s3_bucket/
│   │   ├── bucket.tf           # S3 Bucket definition with versioning and encryption
│   │   ├── public_access.tf    # Public access block configuration
│   │   ├── logging.tf          # S3 Bucket logging configuration
│   │   ├── variables.tf        # Module variables for S3 bucket
│   │   └── outputs.tf          # Module outputs for S3 bucket
│   └── cloudwatch_alarm/
│       ├── sns.tf              # SNS topic and subscription definitions
│       ├── log_metric_filter.tf# CloudWatch Log Metric Filter definition
│       ├── alarm.tf            # CloudWatch Alarm definition
│       ├── variables.tf        # Module variables for CloudWatch alarm
│       └── outputs.tf          # Module outputs for CloudWatch alarm
├── .github/
│   └── workflows/
│       └── terraform.yml       # GitHub Actions CI/CD pipeline configuration
├── README.md                   # Project documentation
└── terraform.tfvars.example    # Example variable file for local overrides



## Modules

Each module in the `modules/` directory encapsulates a single resource or a set of related resources. For example:

- **VPC Module:** Contains separate files for the VPC, public subnets, and private subnets.
- **ECS/Fargate Module:** Splits ECS cluster, IAM roles, task definitions, service, and autoscaling into distinct files.
- **S3 Bucket Module:** Divides bucket creation, public access configuration, and logging setup.
- **CloudWatch Alarm Module:** Breaks out SNS configuration, log metric filter, and alarm definition.

This modular approach promotes code reuse, maintainability, and environment-specific configuration.

## Environments

The `environments/` directory contains environment-specific configurations. For instance, the `dev` folder includes files to invoke the modules with values tailored for the development environment. Separate files are used for provider configuration, module calls, variables, and outputs to enhance clarity and ease of management.

## Setup and Deployment

### Prerequisites

- AWS Credentials with the necessary permissions.
- A GitHub account.
- [Terraform](https://www.terraform.io/downloads.html) installed.
- AWS CLI configured on your local machine.
- AN IDE with the Terraform extension installed.

1. **Clone the Repository:**

   git clone https://github.com/yourusername/my-terraform-project.git
   cd my-terraform-project

