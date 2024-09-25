resource "aws_route_table" "elb-rt" {
    vpc_id = aws_vpc.elb-vpc.id
    tags = {
      Name = "elb-rt-public"
    }
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.elb-igw.id
  }
}
resource "aws_route_table_association" "a" {
  count = length(var.subnet-cidr)
  route_table_id = aws_route_table.elb-rt.id
  subnet_id = aws_subnet.elb-subnet[count.index].id
  
}