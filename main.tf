provider "aws" {
  profile = "default"
  region = "us-east-1"
}

variable "instance_name"{
  type = string
  default = "vmname_u20"
}

resource "aws_instance" "my-instance" {
  count         = 1
  ami           = "ami-5b41123e"
  instance_type = "t2.micro"

  tags = {
    Name  = var.instance_name
  }
}

