resource "aws_internet_gateway" "smm_gateway" {
  vpc_id = "${aws_vpc.smm_vpc.id}"

  tags = {
    Name = "Internet Gateway"
  }
}
