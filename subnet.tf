resource "aws_subnet" "elb-subnet" {
    count = length(var.subnet-cidr)
    vpc_id = aws_vpc.elb-vpc.id
    cidr_block = var.subnet-cidr[count.index]
    availability_zone = var.elb-az[count.index]
    tags = {
      Name = "elb-subnet-${count.index + 1}"
    }
    depends_on = [ aws_route_table.elb-rt ]
  
}