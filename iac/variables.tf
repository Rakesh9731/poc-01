variable "aws_region" { type = string default = "ap-south-1" }
variable "env" { type = string }
variable "name" { type = string }
variable "instance_type" { type = string default = "t3.micro" }
variable "ami_id" { type = string }
variable "subnet_id" { type = string }
variable "sg_ids" { type = list(string) }
