variable "region-1" {
    default = "ap-south-1"
  
}

variable "vpc-cidr" {
    
    default = "12.0.0.0/16"
  
}
variable "subnet-cidr" {
    type = list(string)
    default = [ "12.0.1.0/24","12.0.2.0/24" ]
  
}
variable "elb-az" {
    type = list(string)
    default = [ "ap-south-1a","ap-south-1b" ]

  
}
variable "instance" {
    type = list(string)
    default = [ "elb-instance-1","elb-instance-2" ]
  
}
variable "instance-id" {
    type = list(string)
    default = [ "aws_instance.elb-instance-1[0].id", "aws_instance.elb-instance-1[1].id"]
  
}