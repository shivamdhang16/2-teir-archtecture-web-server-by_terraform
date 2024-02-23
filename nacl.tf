# resource "aws_default_network_acl" "mainnacl" {
#   default_network_acl_id = "acl-0493930b63e8fbd60"

# }


# resource "aws_network_acl_rule" "bar" {
#   network_acl_id = aws_vpc.myvpc.default_network_acl_id
#   rule_number    = 199
#   egress         = false
#   protocol       = "tcp"
#   rule_action    = "allow"
#   cidr_block     = "0.0.0.0/0"
#   from_port      = 0
#   to_port        = 65535
# }

# resource "aws_network_acl_rule" "bar1" {
#   network_acl_id = aws_vpc.myvpc.default_network_acl_id
#   rule_number    = 200
#   egress         = true
#   protocol       = "tcp"
#   rule_action    = "allow"
#   cidr_block     = "0.0.0.0/0"
#   from_port      = 0
#   to_port        = 65535
# }
