output "instance_public_ip" {
    description = "ec2 public ip address"
    value = aws_instance.my_ec2.public_ip
    
  
}