resource "aws_subnet" "ms_public_1" {
  vpc_id                  = aws_vpc.ms_vpc.id
  cidr_block              = var.cidr_public_1
  map_public_ip_on_launch = "true"
  tags = {
    Name = "ms_public_1"
  }
}

resource "aws_subnet" "ms_private_1" {
  vpc_id     = aws_vpc.ms_vpc.id
  cidr_block = var.cidr_private_1
  tags = {
    Name = "ms_private_1"
  }
}

resource "aws_subnet" "ms_public_2" {
  vpc_id                  = aws_vpc.ms_vpc.id
  cidr_block              = var.cidr_public_2
  map_public_ip_on_launch = "true"
  tags = {
    Name = "ms_public_2"
  }
}

resource "aws_subnet" "ms_private_2" {
  vpc_id     = aws_vpc.ms_vpc.id
  cidr_block = var.cidr_private_2
  tags = {
    Name = "ms_private_2"
  }
}