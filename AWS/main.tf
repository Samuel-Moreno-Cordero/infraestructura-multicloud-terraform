provider "aws" {
  region = var.region
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_instance" "example" {
  ami           = var.aws_ami_id
  instance_type = var.instance_type
  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "ProyectoClaseEC2"
  }
}
