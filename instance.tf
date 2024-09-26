resource "aws_instance" "elb-instance-1" {
    count = 2
    ami="ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    key_name = "IAM"
    associate_public_ip_address = true
    subnet_id = aws_subnet.elb-subnet[count.index].id
     security_groups = [ aws_security_group.elb-sg.id]
    user_data = file("./install.sh")
    tags = {
      Name = "elb-instance-${count.index + 1}"
    }

  
}
