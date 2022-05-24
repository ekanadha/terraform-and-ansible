resource "aws_instance" "web-1" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  #vpc_id = "vpc-09bec66413b32fd1f"
  vpc_security_group_ids = [ "${aws_security_group.usr_sg.id}" ]
  key_name = "own-key" 
  count = 03
  tags = {
    Name = "web-1"
  }
}