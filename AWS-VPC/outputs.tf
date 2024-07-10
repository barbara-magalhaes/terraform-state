output "subnet_id" {
value = aws__subnet.subnet.id
}

output "security_group_id" {
  description = "ID da Security group criada na AWS"
  value = aws_security_group.security_group.id
}