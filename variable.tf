variable "vpcname" {
  default = "mainvpc"

}

variable "publictag" {
  default = "public_subnet"

}
variable "privatetag" {
  default = "private_subnet"

}

variable "routetable" {
  default = "public_route"

}

variable "routetable1" {
  default = "private_route"

}

variable "public_instance" {
  default = "public_instance"

}

variable "private_instance" {
  default = "private_instance"

}
