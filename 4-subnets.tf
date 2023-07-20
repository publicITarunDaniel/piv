resource "aws_subnet" "management_subnet" {
  count             = 2
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${local.first_three_octets}.${count.index * 32}/27"
  availability_zone = data.aws_availability_zones.available.names[count.index * 1]
  tags = {
    Name = "${var.project}-ManagementSubnet-${count.index}"
    }
}

resource "aws_subnet" "public_subnet" {
  count             = 2
  vpc_id            = aws_vpc.vpc.id
  #cidr_block        = "10.128.131.${(count.index * 32) + 64}/27"
  cidr_block        = "${local.first_three_octets}.${(count.index * 32) + 64}/27"
  availability_zone = data.aws_availability_zones.available.names[count.index * 1]
  tags = {
    Name = "${var.project}-PublicSubnet-${count.index}"
  }
}


resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.vpc.id
  #cidr_block        = "10.128.131.${(count.index * 32) + 128}/27"
  cidr_block        = "${local.first_three_octets}.${(count.index * 32) + 128}/27"
  availability_zone = data.aws_availability_zones.available.names[count.index * 1]
  tags = {
    Name = "${var.project}-PrivateSubnet-${count.index}"
  }
}