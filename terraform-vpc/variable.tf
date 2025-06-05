variable "aws_region" {
    description = "aws region to deploy resources in"
    type = string
  
}

variable "vpc_cidr_block" {
    description = "cidrblock for the vpc"
    type = string
  
}

variable "subnet_cidr_block" {
    description = "cidr block for the subnet"
    type = string
  
}

variable "availability_zone" {
    description = "availability zone for the subnet"
    type = string
  
}