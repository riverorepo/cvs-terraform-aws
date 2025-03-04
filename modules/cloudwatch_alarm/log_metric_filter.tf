resource "aws_cloudwatch_log_metric_filter" "error_filter" {
  name           = "ErrorCountFilter"
  log_group_name = var.log_group_name
  pattern        = var.error_pattern

  metric_transformation {
    name      = var.metric_name
    namespace = var.metric_namespace
    value     = "1"
  }
}
