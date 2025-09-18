# Outputs for the Terraform configuration
output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "private_nacl_id" {
  value = aws_network_acl.private_nacl.id
}
