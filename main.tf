terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0cd4900b43e25799c"
  instance_type = "t2.micro"

  tags = {
     Name = var.instance_name
  }
}

resource "aws_instance" "vm1" {
  ami           = "ami-0cd4900b43e25799c"
  instance_type = "t2.micro"

  tags = {
     Name = var.instance_name1
  }
}
