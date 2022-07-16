output vpc_id {
    value = aws_vpc.ms_vpc.id
}

output public_subnet_id_1 {
    value = aws_subnet.ms_public_1.id
}

output private_subnet_id_1 {
    value = aws_subnet.ms_private_1.id
}

output public_subnet_id_2 {
    value = aws_subnet.ms_public_2.id
}

output private_subnet_id_2 {
    value = aws_subnet.ms_private_2.id
}