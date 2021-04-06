resource "aws_instance" "myec2" {
  ami           = var.amiid
  instance_type = var.instance_type
  count = var.instance_count
  tags = {
    "Name" = "${var.tags}-${count.index}"
  }
}

output "ipaddress" {
  value = aws_instance.myec2[*].public_ip
}

output "private_address" {
  value = aws_instance.myec2[*].private_ip
}