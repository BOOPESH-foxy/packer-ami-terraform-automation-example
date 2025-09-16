provider "aws" {
  region = var.region
}

data "aws_ami" "nginx_ami" {
  most_recent = true
  owners = var.owner_id
  filter {
    name   = "name"
    values = ["nginx-packer-*"]
  }
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.nginx_ami.id
  instance_type   = var.instance_type

  tags = {
    Name = "packer-example-web"
  }
}
