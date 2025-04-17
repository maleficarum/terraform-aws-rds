output "domain_address" {
  value = aws_db_instance.default.address
  description = "Domain Address"
}

output "domain_fqdn" {
  value = aws_db_instance.default.domain_fqdn
  description = "Domain FQDN"
}

output "domain_username" {
  value = aws_db_instance.default.username
  description = "Domain Username"
}

output "domain_password" {
  value = aws_db_instance.default.password
  description = "Domain Password"
  sensitive = true
}