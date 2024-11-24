output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.web.public_ip
}

output "private_ip" {
  description = "Private IP address of the instance"
  value       = aws_instance.web.private_ip
}