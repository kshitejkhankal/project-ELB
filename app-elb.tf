resource "aws_lb" "applicatin-elb" {
  
    name = "app-load-balancer"
    # security_groups = [ "aws_security_group.elb-sg"]
    
    subnets = [aws_subnet.elb-subnet[0].id, aws_subnet.elb-subnet[1].id]
    internal = false
    enable_deletion_protection = false
    load_balancer_type = "application"
    tags = {
      Name ="app-load-balancer"
    }
    
  
}