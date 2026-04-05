What You Will Accomplish Today
Yesterday you deployed your first server. Today you level up. You will learn one of the most important principles in Terraform — and in software engineering generally — which is DRY: Don't Repeat Yourself. You will apply it by deploying a configurable web server using input variables, then take it further by deploying a clustered web server capable of handling real traffic. By the end of today you will understand what separates a toy deployment from production-ready infrastructure.


Tasks
1. Read
Book: Terraform: Up & Running by Yevgeniy Brikman — Chapter 2
Read pages 60 through 69. Focus on:
How input variables eliminate hardcoded values
How to make infrastructure configurable without changing core logic
The DRY principle as it applies to Terraform configurations
How a clustered setup differs architecturally from a single server


2. Complete the Hands-On Labs
Both labs today are foundational. Variables and data sources appear in virtually every real-world Terraform configuration.
Lab 1: Intro to the Terraform Data Block
Lab 2: Intro to Input Variables


3. Deploy a Configurable Web Server
Take the web server you built on Day 3 and refactor it using input variables. Nothing should be hardcoded. Instance type, region, port number, and any environment-specific values should all be driven by variables.
Your variables.tf should define at minimum:
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
Run terraform plan and verify that no hardcoded values remain in your main.tf. Deploy with terraform apply and confirm the server is reachable.


4. Deploy a Clustered Web Server
Now extend your deployment to a cluster. Use an Auto Scaling Group (ASG) backed by a Launch Configuration and put an Application Load Balancer (ALB) in front of it.
Your cluster should include:
A Launch Configuration or Launch Template defining the instance spec
An Auto Scaling Group with a minimum of 2 instances and a maximum of 5
An Application Load Balancer distributing traffic across the instances
A Target Group and Listener connecting the ALB to the ASG
Security groups allowing HTTP traffic in and all traffic out
Use a data source to fetch the list of available availability zones dynamically:
data "aws_availability_zones" "all" {}
Deploy, confirm the ALB DNS name resolves and returns your web page, then destroy everythin
