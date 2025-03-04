variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "task_family" {
  description = "Task family name"
  type        = string
}

variable "cpu" {
  description = "CPU units for the task"
  type        = string
}

variable "memory" {
  description = "Memory for the task (in MB)"
  type        = string
}

variable "container_name" {
  description = "Container name"
  type        = string
}

variable "image_url" {
  description = "Docker image URL"
  type        = string
}

variable "container_port" {
  description = "Port on which the container listens"
  type        = number
}

variable "log_group" {
  description = "CloudWatch log group name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for ECS tasks"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for ECS tasks"
  type        = list(string)
}

variable "target_group_arn" {
  description = "ARN of the target group for the ALB"
  type        = string
}

variable "service_name" {
  description = "ECS service name"
  type        = string
}

variable "max_capacity" {
  description = "Maximum capacity for auto scaling"
  type        = number
}

variable "min_capacity" {
  description = "Minimum capacity for auto scaling"
  type        = number
}

variable "cpu_target_value" {
  description = "Target CPU utilization value for auto scaling"
  type        = number
}
