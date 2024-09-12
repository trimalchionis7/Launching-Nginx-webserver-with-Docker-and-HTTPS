# Use default VPC
resource "aws_default_vpc" "default" {
}

# Select the newest Amazon Linux 2 AMI
data "aws_ami" "latest_linux_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*x86_64"]
  }
}

# Create EC2 instance
module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.5.0"
  count   = 1

  name = "cgi-ec2-instance"

  ami                    = data.aws_ami.latest_linux_ami.id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_server.id]
  # user_data              = file("userdata.tpl")

  tags = {
    Name = "cgi-ec2-instance"
  }
}