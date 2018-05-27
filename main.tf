data "template_file" "cloudwatch_metric_alarm_prefix_tpl" {
  template = "$${product}_$${environment}"

  vars {
    product         = "${var.comp_vars["product"]}"
    environment          = "${var.environment}"
  }
}

resource "aws_cloudwatch_metric_alarm" "main" {
  alarm_name        = "${data.template_file.cloudwatch_metric_alarm_prefix_tpl.rendered}_${var.alarm_name}"
  alarm_description = "Managed By Terraform - ${var.comp_vars["product"]} ${var.environment} ${var.alarm_name}"
  metric_name       = "${var.metric_name}"
  comparison_operator = "${var.comparison_operator}"
  evaluation_periods  = "${var.evaluation_periods}"
  namespace           = "${var.namespace}"
  period 	      = "${var.statistics_period}"
  statistic           = "${var.statistic}"
  threshold           = "${var.threshold}"
  actions_enabled     = "${var.actions_enabled}"
  alarm_actions       = ["${var.alarm_action_arn}"]
  ok_actions          = ["${var.ok_action_arn}"]
}
