resource "aws_route_table" "mainroute" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.routetable
  }
  ### imported
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.mainroute.id


}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.mainroute.id

}

###################################




resource "aws_route_table" "privateroute" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.routetable1
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natprivate.id
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.privateroute.id
}



