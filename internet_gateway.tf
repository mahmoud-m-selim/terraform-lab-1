resource "aws_internet_gateway" "ms_internet_gateway" {
  vpc_id = aws_vpc.ms_vpc.id
  tags = {
    Name = "ms_internet_gateway"
  }
}