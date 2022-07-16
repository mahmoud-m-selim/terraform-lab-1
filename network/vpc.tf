resource "aws_vpc" "ms_vpc" {
  cidr_block         = var.cidr
  enable_dns_support = "false"
  tags = {
    Name = "ms_vpc"
  }
}