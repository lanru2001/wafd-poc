resource "aws_security_group" "feather_service" {
  name   = "${var.name}-service"
  vpc_id = aws_vpc.app_vpc.id
	
  ingress {
   protocol         = "tcp"
   from_port        = 80
   to_port          = 80
   cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
   protocol         = "tcp"
   from_port        = 22
   to_port          = 22
   cidr_blocks      = ["0.0.0.0/0"]

  }

  ingress {
   protocol         = "tcp"
   from_port        = 443
   to_port          = 443
   cidr_blocks      = ["0.0.0.0/0"]
  }
 
  ingress {
   protocol         = "tcp"
   from_port        = 8080
   to_port          = 8080
   cidr_blocks      = ["0.0.0.0/0"]
  }

  
  ingress {
   protocol         = "tcp"
   from_port        = 3000
   to_port          = 3000
   cidr_blocks      = ["0.0.0.0/0"]
  }
 
  egress {
   protocol         = "-1"
   from_port        = 0
   to_port          = 0
   cidr_blocks      = ["0.0.0.0/0"]
  }

}
