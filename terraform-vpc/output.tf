output "vpc_id" {
    description = "the id of the vpc"
    value = aws_vpc.main.id
  
}

output "subnet_id" {
    description = "the id of the subnet"
    value = aws_subnet.main.id
  
}

output "internet_gateway_id" {  
    description = "the id of the internet gateway"
    value = aws_internet_gateway.gw.id
  
}