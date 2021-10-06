provider {
  region = "us-east-1"
}

resource "aws_instance" "myec2-vm" {
  ami           = "ami-5b41123e"
  instance_type = "t2.micro"
  
  tags = {
    Name = "VM-one"
  }
}
