
variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-2"  # Ohio
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free Tier eligible
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance. NOTE: AMI IDs differ per region!"
  type        = string
  default     = "ami-0fb653ca2d3203ac1"  
}
