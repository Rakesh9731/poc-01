module "ec2" {
source = "./modules/ec2_basic"
name = var.name
instance_type = var.instance_type
ami_id = var.ami_id
subnet_id = var.subnet_id
vpc_security_group_ids = var.sg_ids
tags = {
environment = var.env
managed_by = "infra-bot"
}
}
