resource "aws_instance" "usr" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  #vpc_id = "vpc-09bec66413b32fd1f"
  vpc_security_group_ids = [ "${aws_security_group.usr_sg.id}" ]
  key_name = "own-key" 
   user_data = <<EOF
            #!/bin/bash
             yum update -y
             yum install httpd -y 
             systemctl enable httpd
             systemctl start httpd
             
             
       EOF
 

  tags = {
    Name = "usr"
  }
}