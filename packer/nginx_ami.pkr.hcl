packer {
  required_version = ">= 1.5.0"
}

source "amazon-ebs" "nginx" {
  region                 = "ap-south-1"
  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "amzn2-ami-hvm-*-x86_64-gp2"
      root-device-type    = "ebs"
    }
    owners      = ["137112412989"]  # Amazon AMIs
    most_recent = true
  }
  instance_type = "t2.micro"
  ami_name      = "nginx-packer-{{timestamp}}"
  ssh_username  = "ec2-user"
}

build {
  sources = ["source.amazon-ebs.nginx"]

  provisioner "shell" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install -y nginx",
      "sudo systemctl enable nginx"
    ]
  }
}
