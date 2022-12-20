variable "elb" {
  type = string
}

variable "lb_target_group_arn" {
  type = string
}

variable "name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "max_size" {
  type = string
}

variable "min_size" {
  type = string
}

variable "capacity_rebalance" {
  type = string
}

variable "default_cooldown" {
  type = string
}

variable "default_instance_warmup" {
  type = string
}

variable "launch_configuration" {
  type = string
}

variable "health_check_type" {
  type = string
}

variable "desired_capacity" {
  type = string
}

variable "hook_name" {
  type = string
}

variable "lifecycle_transition" {
  type = string
}

variable "topic_arn" {
  type = string
}

variable "policy_name" {
  type = string
}

variable "policy_type" {
  type = string
}

variable "enabled" {
  type = string
}

variable "scheduled_action_name" {
  type = string
}

variable "start_time" {
  type = string
}

variable "end_time" {
  type = string
}

variable "config_name" {
  type = string
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "associate_public_ip_address" {
  type = string
}

variable "ebs_optimized" {
  type = string
}

variable "force_delete" {
  type = string
}

variable "key" {
  type = string
}

variable "value" {
  type = string
}

variable "propagate_at_launch" {
  type = string
}

variable "notifications" {
  type = tuple([string, string])
}

variable "lbname" {
  type = string
}

variable "port" {
  type = string
}

variable "protocol" {
  type = string
}

variable "group_names" {
  type = tuple([string, string])
}

variable "metric_aggregation_type" {
  type = string
}
