variable "ami_id"{
    description = "ec2 instance ami id "
    type = string
}


variable "instance_type" {
    description = "ec2 instance type"
    type = string
    default = "t2.micro"
  
}

