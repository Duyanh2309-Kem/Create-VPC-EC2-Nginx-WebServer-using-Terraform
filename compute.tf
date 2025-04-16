resource "aws_instance" "myWeb" {
  ami = data.aws_ami.ubuntu22.id
  associate_public_ip_address = true
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-subnet-01.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 30
    volume_type = "gp3"
  }
  user_data = file("nginx.sh")
  tags = {
    "Name" = "myWeb"
  }
}