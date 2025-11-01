# module "vote_service_sg" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_names}-cat"
#   description = "Security group for catalogue with custom ports open within VPC, egres all trafic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# }

module "aws_sg" {
  source = "git::https://github.com/kiransai-Devops/aws-sg.git?ref=main"
  count = length(var.sg_name)
  sg_name = var.sg_name[count.index]
  sg_description = var.sg_description
  vpc_id = local.vpc_id
  project_name = var.project_name
  Env = var.Env

}


