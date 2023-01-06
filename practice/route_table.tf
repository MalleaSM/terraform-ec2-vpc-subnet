resource "aws_route_table" "smm_route_table" {
  vpc_id = "${aws_vpc.smm_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.smm_gateway.id}"
  }

  tags = {
    Name = "Route Table"
  }
}

resource "aws_route_table_association" "public_1_rt_a" {
  subnet_id      = aws_subnet.smm_public_subnet.id
  route_table_id = aws_route_table.smm_route_table.id
}
