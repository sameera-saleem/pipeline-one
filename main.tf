provider {
  region = "us-east-1"
}

resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "my-instance" {
  count         = 1
  ami           = "ami-5b41123e"
  instance_type = var.instance_type
  key_name      = "${aws_key_pair.terraform-demo.key_name}"

  tags = {
    Name  = "sample_one"
  }
}

