# terraform-ec2-module/variables.tf
variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of instances to launch."
  type        = number
  default     = 1
}

variable "key_name" {
  description = "The key name to use for the instance."
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in."
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the instance."
  type        = list(string)
  default     = []
}

variable "instance_name" {
  description = "Name tag for the instance."
  type        = string
  default     = "my-instance"
}

variable "ebs_volume_size" {
  description = "The size of the EBS volume in GiB."
  type        = number
  default     = 8
}

variable "ebs_volume_type" {
  description = "The type of the EBS volume."
  type        = string
  default     = "gp2"
}
