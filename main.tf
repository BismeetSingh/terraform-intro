terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
  access_key = "accesskey"
  secret_key = "secretkey"
  
}


resource "aws_instance" "my-first-terraform-ec2" {
    ami           = "ami-074dc0a6f6c764218" # us-east-1
    instance_type = "t2.micro"
    tags = {
      Name = "ubuntu"
    }
  
}