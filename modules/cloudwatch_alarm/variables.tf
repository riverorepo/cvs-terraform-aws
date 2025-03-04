variable "alarm_topic_name" {
  description = "Name for the SNS topic"
  type        = string
}

variable "notification_email" {
  description = "Email to receive notifications"
  type        = string
}

variable "log_group_name" {
  description = "CloudWatch log group name"
  type        = string
}

variable "error_pattern" {
  description = "Log pattern for errors"
  type        = string
}

variable "metric_name" {
  description = "Name of the metric"
  type        = string
}

variable "metric_namespace" {
  description = "Namespace for the metric"
  type        = string
}

variable "alarm_name" {
  description = "Name for the CloudWatch alarm"
  type        = string
}

variable "alarm_period" {
  description = "Alarm period in seconds"
  type        = number
}

variable "evaluation_periods" {
  description = "Number of evaluation periods"
  type        = number
}

variable "error_threshold" {
  description = "Threshold for triggering the alarm"
  type        = number
}
