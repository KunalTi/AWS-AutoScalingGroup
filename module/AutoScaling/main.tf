resource "aws_lb_target_group" "test" {
  name     = var.lbname
  port     = var.port
  protocol = var.protocol
  tags_all = var.tags
}

resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = var.name
  elb                    = var.elb
  lb_target_group_arn    = aws_lb_target_group.test.arn
  depends_on = [
    aws_lb_target_group.test
  ]
}

resource "aws_autoscaling_group" "bar" {
  name                    = var.name
  max_size                = var.max_size
  min_size                = var.min_size
  capacity_rebalance      = var.capacity_rebalance
  default_cooldown        = var.default_cooldown
  default_instance_warmup = var.default_instance_warmup
  launch_configuration    = var.launch_configuration
  health_check_type       = var.health_check_type
  desired_capacity        = var.desired_capacity
  force_delete            = var.force_delete
}

resource "aws_autoscaling_group_tag" "example" {
  autoscaling_group_name = var.name
  tag {
    key                 = var.key
    value               = var.value
    propagate_at_launch = var.propagate_at_launch
  }
}

resource "aws_autoscaling_lifecycle_hook" "foobar" {
  name                   = var.hook_name
  autoscaling_group_name = var.name
  lifecycle_transition   = var.lifecycle_transition
}

resource "aws_autoscaling_notification" "example_notifications" {
  group_names   = var.group_names
  notifications = var.notifications
  topic_arn     = var.topic_arn
}

resource "aws_autoscaling_policy" "bat" {
  name                    = var.policy_name
  autoscaling_group_name  = var.name
  policy_type             = var.policy_type
  enabled                 = var.enabled
  metric_aggregation_type = var.metric_aggregation_type
}

resource "aws_autoscaling_schedule" "foobar" {
  autoscaling_group_name = var.name
  scheduled_action_name  = var.scheduled_action_name
  min_size               = var.min_size
  max_size               = var.max_size
  desired_capacity       = var.desired_capacity
  start_time             = var.start_time
  end_time               = var.end_time
}

resource "aws_launch_configuration" "as_conf" {
  name                        = var.config_name
  image_id                    = var.image_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  ebs_optimized               = var.ebs_optimized
}
