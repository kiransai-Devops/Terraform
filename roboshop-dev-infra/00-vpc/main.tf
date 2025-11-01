module "vpc" {
    # source = "../aws-vps"
    source = "git::https://github.com/kiransai-Devops/aws-vpc.git"
    cidr_block = "10.0.0.0/16"
    project_name = "roboshop"
    Env = "dev"

    public_subnet_cidrs = var.public_subnet_cidrs

    private_subnet_cidrs = var.private_subnet_cidrs
    
    database_subnet_cidrs = var.database_subnet_cidrs

   is_peering_required = true
}


