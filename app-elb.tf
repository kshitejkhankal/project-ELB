resource "aws_lb" "applicatin-elb" {
  
    name = "app-load-balancer"
    # security_groups = [ "aws_security_group.elb-sg"]
    
    subnets = ["elb-subnet-1.id","elb-subnet-2.id"]
    internal = false
    enable_deletion_protection = false
    load_balancer_type = "application"
    tags = {
      Name ="app-load-balancer"
    }
    
  
}