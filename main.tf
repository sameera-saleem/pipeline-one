provider "aws" {
  profile = "default"
  region = "us-east-1"
}

variable "instance_name"{
  type = string
  default = " "
}

resource "aws_instance" "my-instance" {
  count         = 1
  ami           = "ami-5b41123e"
  instance_type = var.instance_type

  tags = {
    Name  = var.instance_name
  }
}

