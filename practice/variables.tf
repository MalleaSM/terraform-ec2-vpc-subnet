variable "subnet_availability_zone" {
  type        = string
  description = "Availavility zone for the subnet"
}
variable "subnet_cidr_block" {
  type = string
  description = "network for the subnet"
}

variable "aws_region" {
  type        = string
  description = "AWS region to be used"
}
variable "key_name" {
  type = string
  description = "key name for ssh"
}

variable "instance_type" {
  type = string
  description = "Instance type for the EC2"
}