variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
}

variable "server_port" {
  description = "Port the web server listens on"
  type        = number
  default     = 80
}

variable "challenge_day" {
  description = "The current day of the challenge for tagging resources"
  type        = string
  default     = "5"
}