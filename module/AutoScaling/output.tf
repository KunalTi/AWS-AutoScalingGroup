output "attachment_id" {
  value = aws_autoscaling_attachment.asg_attachment_bar.id
}

output "lbARN" {
  value = aws_autoscaling_attachment.asg_attachment_bar.lb_target_group_arn
}

output "AutoScalingARN" {
  value = aws_autoscaling_group.bar.arn
}

output "GroupID" {
  value = aws_autoscaling_group.bar.id
}

output "serviceroleARN" {
  value = aws_autoscaling_group.bar.service_linked_role_arn
}

output "vpc_zone" {
  value = aws_autoscaling_group.bar.vpc_zone_identifier
}

output "tagID" {
  value = aws_autoscaling_group_tag.example.id
}
