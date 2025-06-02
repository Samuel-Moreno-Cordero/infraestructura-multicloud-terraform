variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-01e3c4a339a264cc9"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
