
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| actions_enabled | (Optional) Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true. | string | `true` | no |
| alarm_action_arn | (Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Number (ARN). | string | - | yes |
| alarm_name | (Required) The descriptive name for the alarm. This name must be unique within the user's AWS account | string | - | yes |
| comp_vars |  | map | - | yes |
| comparison_operator | (Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. Supported operators: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold | string | - | yes |
| environment |  | string | - | yes |
| evaluation_periods | (Required) The number of periods over which data is compared to the specified threshold. | string | - | yes |
| metric_name | (Required) The name for the alarm's associated metric. See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html). | string | - | yes |
| namespace | (Required) The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-namespaces.html). | string | - | yes |
| ok_action_arn | (Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Number (ARN). | string | - | yes |
| statistic | (Optional) The statistic to apply to the alarm's associated metric. supported statistics: SampleCount, Average, Sum, Minimum, Maximum | string | - | yes |
| statistics_period | (Required) The period in seconds over which the specified statistic is applied. | string | - | yes |
| threshold | (Required) The value against which the specified statistic is compared. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| cloudwatch_metric_alarm_id |  |

