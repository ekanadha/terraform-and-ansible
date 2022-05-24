resource "aws_security_group" "terra_sg" {
  name        = "terra_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-09bec66413b32fd1f"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["103.110.170.85/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terra_sg"
  }
}