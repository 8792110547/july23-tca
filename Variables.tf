# Create variables for Vpc

variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "choose cidr block for vpc"

}

# Create variables for Subnet

variable "subnet_cidrs" {
  default     = ["10.20.0.0/24","10.20.1.0/24","10.20.2.0/24"]
  type        = list(string)
  description = "choose cidr block for subnet"

}

# Create variables for Region

variable "region" {
  default = "ap-south-1"
  type    = string

}


# Create variables for AZS

variable "azs" {
  default = ["ap-south-1a","ap-south-1b","ap-south-1c"]
  type    = list(string)

}