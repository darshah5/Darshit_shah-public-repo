variable "aws_region" {
  default = "ap-south-1"
}
 
variable "instance_type" {
  default = "t2.micro"
}
 
variable "disk_size" {
  default = 30
}
 
variable "security_group_name" {
  default = "Q2-security-group"
}
 
variable "allowed_ports" {
  default = [22, 80, 443]
}
 
variable "ami_id" {
  default = "ami-09b0a86a2c84101e1" # Ubuntu 22.04 LTS for ap-south-1
}