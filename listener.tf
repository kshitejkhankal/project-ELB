resource "aws_lb_listener" "elb-listener-a" {
  load_balancer_arn = aws_lb.applicatin-elb.arn
  port = 80
  protocol = "HTTP"
  
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.elb-target.arn

  }
}