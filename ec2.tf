
resource "aws_instance" "public_instance" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  key_name      = aws_key_pair.my_keypair.id
#  security_groups =  = aws_security_group.public_security.id
  vpc_security_group_ids = [aws_security_group.public_security.id]
  associate_public_ip_address = true
  tags = {
    Name = var.public_instance
  }
}


resource "aws_instance" "private_instance" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  key_name      = aws_key_pair.my_keypair.id
  tags = {
    Name = var.private_instance
  }
}
