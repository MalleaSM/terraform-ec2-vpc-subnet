resource "aws_instance" "smm_instance" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id     = "${aws_subnet.smm_public_subnet.id}"
  associate_public_ip_address = true
  security_groups = [
    "${aws_security_group.smm_security_group.id}"
  ]

  tags = {
    Name = "EC2 Instance"
  }
}
