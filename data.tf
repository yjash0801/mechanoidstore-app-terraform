data "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "app_alb_sg_id" {
    name = "/${var.project_name}/${var.environment}/app_alb_id"
}

data "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "catalogue_sg_id" {
    name = "/${var.project_name}/${var.environment}/catalogue_sg_id"
}

data "aws_vpc" "default"{
  default = true
}

data "aws_subnet" "default_subnet" {
    vpc_id = data.aws_vpc.default.id
    availability_zone = "us-east-1a"
}

data "aws_ssm_parameter" "listener_arn" {
  name = "/${var.project_name}/${var.environment}/listener_arn"
}

data "aws_ami" "centos" {
    owners = ["973714476881"]
    most_recent = true

    filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}