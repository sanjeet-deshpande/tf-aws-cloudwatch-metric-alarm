variable "adsk_vars" {
  type = "map"
}

variable "environment" {}

variable "alarm_name" {
  description = "(Required) The descriptive name for the alarm. This name must be unique within the user's AWS account"
}

variable "metric_name" {
  description = " (Required) The name for the alarm's associated metric. See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html)."
}

variable "comparison_operator" {
   description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. Supported operators: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold"
}

variable "evaluation_periods" {
   description = "(Required) The number of periods over which data is compared to the specified threshold."
}

variable "namespace" {
   description = "(Required) The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-namespaces.html)."
}

variable "statistics_period" {
   description = "(Required) The period in seconds over which the specified statistic is applied."
}

variable "statistic" {
  description = "(Optional) The statistic to apply to the alarm's associated metric. supported statistics: SampleCount, Average, Sum, Minimum, Maximum"
}

variable "threshold" {
  description = "(Required) The value against which the specified statistic is compared."
}

variable "actions_enabled" {
  description = "(Optional) Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true."
  default = "true"
}

variable "alarm_action_arn" {
   description = " (Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Number (ARN)."
}

variable "ok_action_arn" {
   description = "(Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Number (ARN)."
}
