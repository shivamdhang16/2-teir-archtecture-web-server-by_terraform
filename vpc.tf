
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.vpcname
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = "ap-south-1a"
  tags = {
    Name = var.publictag
  }
}

resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.128.0/17"
  availability_zone = "ap-south-1c"
  tags = {
    Name = "public_2"
  }
}



resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "ap-south-1a"
  tags = {
    Name = var.privatetag
  }
}

