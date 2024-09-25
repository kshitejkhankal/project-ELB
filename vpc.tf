resource "aws_vpc" "elb-vpc" {
    cidr_block = var.vpc-cidr
    tags = {
      Name = "elb-vpc-terraform"
    }
}