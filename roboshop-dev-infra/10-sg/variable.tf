variable "project_name" {
  default = "roboshop"
}

variable "Env" {
  default = "dev"
}

variable "sg_name" {
  default = [
    # database
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue", "user", "payment", "cart", "shipping",
    # frontend
    "frontend",
    # bastion
    "bastion",
    # frontend_alb
    "frontend_alb",
    # backend_alb
    "backend_alb"
  ]
}

variable "sg_description" {
  default = "mongodb sg"
}

