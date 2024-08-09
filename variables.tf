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

variable "vpc_id" {
  
}

variable "component_sg_id" {
  
}

variable "private_subnet_ids" {
  
}

variable "iam_instance_profile" {
  
}

variable "priority" {
  
}

variable "listener_arn" {
  
}

variable "app_version" {
  
}