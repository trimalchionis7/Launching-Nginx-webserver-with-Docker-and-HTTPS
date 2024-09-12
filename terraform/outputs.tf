output "ec2_instance_public_ips" {
  description = "Public IP address of EC2 instance"
  value       = module.ec2_instances[*].public_ip
}