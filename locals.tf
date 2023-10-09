#Create a local for the variable 

locals {
  az_names = data.aws_availability_zones.azs.names
}