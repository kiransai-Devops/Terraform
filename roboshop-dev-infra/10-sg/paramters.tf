resource "aws_ssm_parameter" "sg_id" {
  count = length(var.sg_name)
  name  = "/${var.project_name}/${var.Env}/${var.sg_name[count.index]}_sg_id" #roboshop/dev/mongo_sg_id
  type  = "String"
  value = module.aws_sg[count.index].sg_id
}