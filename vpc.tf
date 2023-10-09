resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name     = "gangu_tca1"
    Location = "Bangalore"
  }
}


# Create subnet in the above vpc

resource "aws_subnet" "main" {
  count = length(local.az_names)
  vpc_id            = aws_vpc.main.id
  availability_zone = local.az_names[count.index]
  cidr_block        = var.subnet_cidrs[count.index]
  tags = {
    Name = "MySubnet-${count.index + 1}"
  }
}


# Terraform import

#resource "aws_vpc" "cloud-app" {
#cidr_block = "10.20.0.0/16"
#instance_tenancy = "default"
 #tags = {
  #  Name = "gangu_tca"
 #   Location = "Bangalore"
 #   Department = "IT"
 # }
#}