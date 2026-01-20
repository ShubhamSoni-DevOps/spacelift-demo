output "aws_instances" {
  value = [for instance in aws_instance.this : instance.private_ip]
}
