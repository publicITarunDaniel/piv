resource "aws_eip" "my_eip" {
  count = 2

  tags = {
    Name = "${var.project}-FW-EIP-${count.index}"
  }
}