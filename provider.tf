terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
  
  backend "s3" {
    bucket = "mechanoidstore-state-dev"
    key    = "catalogue"
    region = "us-east-1"
    dynamodb_table = "mechanoidstore-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}