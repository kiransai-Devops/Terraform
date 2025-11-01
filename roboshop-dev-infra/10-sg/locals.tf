locals {
  common_names = "${var.project_name}-${var.Env}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}