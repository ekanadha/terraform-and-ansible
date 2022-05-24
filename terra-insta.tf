resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  #vpc_id = "vpc-09bec66413b32fd1f"
  vpc_security_group_ids = [ "${aws_security_group.terra_sg.id}" ]
  key_name = "own-key" 
  tags = {
    Name = "web"
  }
}