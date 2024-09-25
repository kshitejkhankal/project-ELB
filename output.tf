output "ec2-ip-dns" {
    value =  aws_lb.applicatin-elb.dns_name
    
  
}
# output "ec2-ip-1" {
#     value = [for instance in aws_aws_instance.elb-instance-1 : instance public_ip]
  
# }
# output "ec2-ip-2" {
#     value = aws_instance.elb-instance-2.public_ip
  
# }