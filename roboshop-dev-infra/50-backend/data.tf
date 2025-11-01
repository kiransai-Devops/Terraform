data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.Env}/vpc_id"
}

data "aws_ssm_parameter" "backend_alb_sg_id" {
  name = "/${var.project_name}/${var.Env}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.Env}/public_subnet_ids"
}