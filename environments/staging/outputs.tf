output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ecs_cluster_id" {
  value = module.ecs_fargate.cluster_id
}

output "s3_bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "cloudwatch_alarm_name" {
  value = module.cloudwatch_alarm.alarm_name
}
