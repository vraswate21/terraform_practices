provider "aws" {
    region = var.aws_region
  
}

resource "aws_key_pair" "deployer" {
    key_name = "depolyer-key"
    public_key = file("my-key.pub")
  
}

resource "aws_security_group" "ssh_sg" {
    name = "allo_ssh"
    description = "allow ssh inbout traffic"
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress = {
        from_port = 0
        to_port=0
        protocol = "-1"
        cidr_block = ["0.0.0.0/0"]
    
    
      }
    }
  resource "aws_instance" "example"{
    ami = var.ami_id
    instance_type = "t2.micro"
    subnet_id = var.subnet_id
    key_name = aws_key_pair.deployer.key_name
    vpc_security_group_ids = [aws_security_group.ssh_sg.id]

    tags = {
        name = "tf-ec2"
    }
  }
