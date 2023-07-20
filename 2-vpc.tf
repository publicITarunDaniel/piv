resource "aws_vpc" "vpc" {
  cidr_block = var.vpccidr

  tags = {
    Name = "${var.project}-VPC"
  }
}