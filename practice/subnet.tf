resource "aws_subnet" "smm_public_subnet" {
  vpc_id                  = "${aws_vpc.smm_vpc.id}"
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.subnet_availability_zone

  tags = {
    Name = "Public Subnet"
  }
}
