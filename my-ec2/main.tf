
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "HK-Linux"
  }
  key_name = "hk-aws1-admin"
}



# Output the public IP of the instance for SSH access
output "instance_ip" {
  value = aws_instance.web.public_ip
}