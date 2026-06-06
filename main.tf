terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.44.0"
        }
    }   
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Ec2_server_vpc" {
  ami           = "ami-00e801948462f718a" # Amazon Linux 2 (example)
  instance_type = "t3.micro"

  subnet_id              = "subnet-00f367550c98ead3e"
  vpc_security_group_ids = ["sg-07dd1384a337bd8a6"]

  tags = {
    Name = "terraform-ec2"
  }
}