module "cloudwatch_alarm" {
  source             = "../../modules/cloudwatch_alarm"
  alarm_topic_name   = "staging-alarm-topic"
  notification_email = var.notification_email
  log_group_name     = var.error_log_group
  error_pattern      = var.error_pattern
  metric_name        = "ErrorCount"
  metric_namespace   = "cvsapp"
  alarm_name         = "staging-error-alarm"
  alarm_period       = 60
  evaluation_periods = 1
  error_threshold    = 10
}