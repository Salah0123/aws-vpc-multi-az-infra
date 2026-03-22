resource "aws_security_group" "my-sg" {
    name        = "my-sg"
    description = "Allow Http, ssh inbound traffic"
    vpc_id      = var.vpc_id

    ingress {
        description      = "Allow HTTP traffic from VPC CIDR"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "Allow SSH traffic from VPC CIDR"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        description      = "Allow all outbound traffic"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "my-sg"
    }

}