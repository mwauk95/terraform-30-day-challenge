output "alb_dns_name" {
  value       = aws_lb.web.dns_name
  description = "The domain name of the load balancer"
}

output "asg_name" {
  value       = aws_autoscaling_group.web.name
  description = "Auto Scaling Group name"
}

output "target_group_arn" {
  value       = aws_lb_target_group.web.arn
  description = "Target Group ARN"
}