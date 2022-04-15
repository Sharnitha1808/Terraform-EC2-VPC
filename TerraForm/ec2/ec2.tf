provider "aws"{
   region = "us-west-1"
}

data "aws_ami" "my_ami" {                 
  most_recent      = true
  owners           = ["063147653273"]

  filter {
    name   = "name"
    values = ["Sharni-*"]
  }
}
  /*
  resource "aws_security_group" "security_group" {
  name        = "mySg"
  description = "Allow all Tcp and HTTP request"
  vpc_id      = "vpc-08ed67d5d98a2ac53"

  ingress {
    description      = "Allowing tcp port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]        #To want another sg, copy & paste the ingress
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  
}
*/

resource "aws_instance" "my_ec2" {
  ami = data.aws_ami.my_ami.id
  instance_type = "t2.micro"                             # var.instance_type
  subnet_id = "subnet-036ba31c4702d0e05"                            #var.subnet_id
  key_name = "Califokeypair"                                  # var.key_pair
  #security_groups = ["aws_security_group.security_group.id"]
}