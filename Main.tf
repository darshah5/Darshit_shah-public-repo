resource "aws_instance" "darshit_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "darshit_external" # Replace with your key pair
  security_groups = [
    aws_security_group.nginx_sg.name
  ]
 
  root_block_device {
    volume_size = var.disk_size
    volume_type = "gp2"
  }
 
  user_data = file("user.data.sh")
 
  tags = {
    Name = "darshit-server"
  }
}