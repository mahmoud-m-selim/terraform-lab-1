data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ms_bastion" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.ms_public_1.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "ms_bastion"
  }
}

resource "tls_private_key" "ms_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "some_key"
  public_key = tls_private_key.ms_key.public_key_openssh
}





resource "aws_instance" "ms_application" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.ms_private_1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_and_port_3000.id]
  key_name               = aws_key_pair.generated_key.key_name
  tags = {
    Name = "ms_application"
  }
}