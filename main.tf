provider {
  region = "us-east-1"
}

resource "aws_instance" "vm-one" {
  ami           = "ami-5b41123e"
  instance_type = "t2.micro"
  
  tags = {
    Name = "VM-one"
  }
}
