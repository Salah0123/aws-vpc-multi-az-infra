variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type        = list(string)
}

variable "subnet_names" {
    description = "Names for the subnets"
    type        = list(string)
    default     = ["Public-Subnet-1", "Public-Subnet-2"]
}