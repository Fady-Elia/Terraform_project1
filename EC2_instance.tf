# EC2 instance ubuntu

resource "aws_instance" "ec2_instance" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnet.id
  security_groups             = [aws_security_group.security_group.id]
  availability_zone           = "us-east-1a"
  user_data                   = file("script.sh")

}
