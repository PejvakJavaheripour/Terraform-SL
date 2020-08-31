resource "aws_vpc" "Prod_VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = "Terraform Prod_VPC"
    }
}

resource "aws_subnet" "Web_Subnet" {
    cidr_block = "10.0.10.0/24"
    vpc_id = aws_vpc.Prod_VPC.id
    availability_zone = "ap-southeast-2a"
    tags = {
        Name = "Web_Subnet"
    }
}

resource "aws_subnet" "DB_Subnet" {
    cidr_block = "10.0.11.0/24"
    vpc_id = aws_vpc.Prod_VPC.id
    availability_zone = "ap-southeast-2b"
    tags = {
        Name = "DB_Subnet"
    }
}

resource "aws_subnet" "App_Subnet" {
    cidr_block = "10.0.12.0/24"
    vpc_id = aws_vpc.Prod_VPC.id
    availability_zone = "ap-southeast-2c"
    tags = {
        Name = "App_Subnet"
    }
}