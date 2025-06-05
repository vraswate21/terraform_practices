provider "aws" {
    region = var.aws_region
  
}

resource "aws_vpc" "main"{
    cidr_block = var.vpc_cidr_block

    tags = {
      name = "main-vpc"
    }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone


  tags = {
    Name = "Main-subnet"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-igw"
  }
}