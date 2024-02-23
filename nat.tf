resource "aws_eip" "eip" {

}


resource "aws_nat_gateway" "natprivate" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "gw NAT"
  }

}
