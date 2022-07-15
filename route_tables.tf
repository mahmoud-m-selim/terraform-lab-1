resource "aws_route_table" "public_router" {
  vpc_id = aws_vpc.ms_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ms_internet_gateway.id
  }
  tags = {
    Name = "public_router"
  }

}

resource "aws_route_table_association" "ms_public_1" {
  subnet_id      = aws_subnet.ms_public_1.id
  route_table_id = aws_route_table.public_router.id
}

resource "aws_route_table_association" "ms_public_2" {
  subnet_id      = aws_subnet.ms_public_2.id
  route_table_id = aws_route_table.public_router.id
}





resource "aws_route_table" "private_router" {
  vpc_id = aws_vpc.ms_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ms_nat.id
  }
  tags = {
    Name = "private_router"
  }

}

resource "aws_route_table_association" "ms_private_1" {
  subnet_id      = aws_subnet.ms_private_1.id
  route_table_id = aws_route_table.private_router.id
}

resource "aws_route_table_association" "ms_private_2" {
  subnet_id      = aws_subnet.ms_private_2.id
  route_table_id = aws_route_table.private_router.id
}