resource "aws_lb_target_group" "elb-target" {
    name = "app-target-group"
    vpc_id = aws_vpc.elb-vpc.id
    port = 80
    protocol = "HTTP"
    target_type = "instance"
    tags = {
      Name = "app-target-group"
    }
    health_check {
      path = "/"
      interval = 30
      timeout = 5
      healthy_threshold = 5
      unhealthy_threshold = 2
      
      
    }
  
}
resource "aws_lb_target_group_attachment" "tar-1" {
  count = length(aws_instance.elb-instance-1)
    target_group_arn = aws_lb_target_group.elb-target.arn
    

     target_id = aws_instance.elb-instance-1[count.index].id
     
    port = 80
  
}

  


  

  
