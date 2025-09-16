output "instance_ip" {
  description = "custom ami - nginx ip"
  value       = aws_instance.web.public_ip
}