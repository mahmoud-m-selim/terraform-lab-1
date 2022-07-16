resource "aws_eip" "ms_eip" {}

resource "aws_nat_gateway" "ms_nat" {
  allocation_id = aws_eip.ms_eip.id
  subnet_id     = aws_subnet.ms_public_1.id
  tags = {
    Name = "ms_nat"
  }
}