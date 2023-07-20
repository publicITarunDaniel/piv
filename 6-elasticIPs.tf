resource "aws_eip" "my_eip" {
  count = 2
  vpc = true
  tags = {
    Name = "${var.project}-FW-EIP-${count.index}"
  }
}
