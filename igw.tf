resource "aws_internet_gateway" "elb-igw" {
    vpc_id = aws_vpc.elb-vpc.id
    tags = {
      Name = "elb-igw"
    }

  
}