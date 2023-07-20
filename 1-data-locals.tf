locals {
  first_three_octets = join(".", slice(split(".", var.vpccidr), 0, 3))
}

data "aws_availability_zones" "available" {
  state = "available"
}