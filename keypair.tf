resource "aws_key_pair" "my_keypair" {
  key_name   = "my_keypair"
  public_key = file("id_rsa.pub") # Path to your public key file
}