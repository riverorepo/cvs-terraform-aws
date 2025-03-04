resource "aws_cloudwatch_metric_alarm" "error_alarm" {
  alarm_name          = var.alarm_name
  metric_name         = aws_cloudwatch_log_metric_filter.error_filter.metric_transformation[0].name
  namespace           = var.metric_namespace
  statistic           = "Sum"
  period              = var.alarm_period
  evaluation_periods  = var.evaluation_periods
  threshold           = var.error_threshold
  comparison_operator = "GreaterThanThreshold"
  alarm_description   = "Triggered when error log pattern exceeds threshold."
  alarm_actions       = [aws_sns_topic.alarm_topic.arn]
}
