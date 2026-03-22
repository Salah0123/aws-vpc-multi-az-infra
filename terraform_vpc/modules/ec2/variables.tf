variable "sg_id" {
  description = "The ID of the security group to associate with the EC2 instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance in."
  type        = list(string)
}

variable "ec2_name" {
  description = "The name tag for the EC2 instance."
  type        = list(string)
  default     = ["web-server-1", "web-server-2"]
}