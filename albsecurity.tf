resource "aws_security_group" "alb_secure" {
  name        = "alb_lb"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_80" {
  security_group_id = aws_security_group.alb_secure.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_1" {
  security_group_id = aws_security_group.alb_secure.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}