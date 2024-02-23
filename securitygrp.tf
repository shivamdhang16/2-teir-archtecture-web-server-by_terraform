resource "aws_security_group" "public_security" {
  name        = "public_security"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow_tls"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.public_security.id
  count             = length(local.common_ports)
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = local.common_ports[count.index]
  ip_protocol       = "tcp"
  to_port           = local.common_ports[count.index]
}

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   for_each = { for idx, port in local.common_ports : idx => port }

#   security_group_id = aws_security_group.public_security.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = each.value.common_ports
#   ip_protocol       = "tcp"
#   to_port           = each.value.common_ports
# }

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.public_security.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


