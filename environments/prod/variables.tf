variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "backend_bucket" {
  description = "S3 bucket for remote state"
  type        = string
}

variable "backend_dynamodb_table" {
  description = "DynamoDB table for state locking"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "image_url" {
  description = "Docker image URL for ECS task"
  type        = string
}

variable "ecs_log_group" {
  description = "CloudWatch log group for ECS logs"
  type        = string
}

variable "ecs_security_group_id" {
  description = "Security group ID for ECS tasks"
  type        = string
}

variable "target_group_arn" {
  description = "ALB target group ARN"
  type        = string
}

variable "log_bucket_name" {
  description = "Bucket name for logging S3 bucket"
  type        = string
}

variable "notification_email" {
  description = "Email for CloudWatch alarm notifications"
  type        = string
}

variable "error_log_group" {
  description = "CloudWatch log group name for error logs"
  type        = string
}

variable "error_pattern" {
  description = "Error log pattern to search for"
  type        = string
  default     = "ERROR"
}
