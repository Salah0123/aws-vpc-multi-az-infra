variable "sg_id" {
  description = "The ID of the security group to associate with application load balancer."
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets to associate with application load balancer."
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC to associate with application load balancer."
  type        = string
}


variable "instance_ids" {
  description = "The ID of the EC2 instance to attach to the target group."
  type        = list(string)
}