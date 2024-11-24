resource "tls_private_key" "my_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an AWS key pair using the generated public key
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = tls_private_key.my_key_pair.public_key_openssh
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.my_key_pair.key_name
  depends_on = [ aws_key_pair.my_key_pair ]
  tags = {
    Name = "Terraform-EC2"
  }
}

