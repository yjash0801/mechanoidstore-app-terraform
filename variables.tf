variable "project_name" {
    # default = "mechanoidstore"
}

variable "environment" {
    # default = "dev"
}

variable "common_tags" {
    # default = {
    #     Name = "mechanoidstore"
    #     Environment = "dev"
    #     Terraform = "true"
    # }
}

variable "tags" {

}

variable "dns" {
    #default = "mechanoidstore.online"
}

variable "instance_type" {
  
}

variable "ec2_tags" {
    default = ""
}

variable "vpc_id" {
  
}

variable "component_sg_id" {
  
}

variable "private_subnet_ids" {
  
}

variable "iam_role" {
  
}

variable "instance_type" {
  
}