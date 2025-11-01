locals {
  ami_id = data.aws_ami.Dev.id
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  subnet_id = split("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
  common_tags = {
    project_name = var.project_name
    Env = var.Env
  }
}



