# output "ec2instance" {
#   description = "this output is public ip of ec2 instances"
#   value       = aws_instance.project-iac.public_ip
# }
output "dummy-value" {
  description = "this output only test"
  value       = "hello here is dummy"
}