# region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-2"
}

# VPC and Subnet configuration

# VPC CIDR block
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

# VPC Name
variable "vpc_name" {
  default = "Terraform VPC"
}
# Public Subnet CIDR block
variable "public_subnet_cidr_block" {
  default = "10.0.0.0/24"
}
# Public Subnet Name
variable "public_subnet_name" {
  default = "Terraform Public Subnet 1"
}
# Public Subnet Availability Zone
variable "public_subnet_az" {
  description = "The Availability Zone for the public subnet"
  type = string
  default = "eu-west-2a"
}
# Private Subnet CIDR block
variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.1.0/24"
}
# Private Subnet Name
variable "private_subnet_name" {
  description = "Name for the private subnet"
  type        = string
  default     = "Terraform Private Subnet 1"
}
# Private Subnet Availability Zone
variable "private_subnet_az" {
  description = "The Availability Zone for the private subnet"
  type = string
  default = "eu-west-2b"
}

# Internet Gateway and Route Table configuration

# Internet Gateway Name
variable "igw_name" {
  default = "Terraform IG"
}
# Public Route table Name
variable "public_route_table_name" {
  default = "Terraform Public Route Table"
}
# Private Route table Name
variable "private_route_table_name" {
  default = "Terraform Private Route Table"
}
# Security Group Name
variable "security_group_name" {
  default = "Terraform Networking series part 2 Security Group"
}
# internet cidr block
variable "internet_cidr_block" {
  default = "0.0.0.0/0"
}

# Network ACL Public configuration

# Public Network ACL Name
variable "public_network_acl_name" {
  default = "Terraform Public subnet 1 ACL"
}
# Public Network ACL Inbound Rule Number
variable "public_network_acl_inbound_rule_number" {
  default = 100
}
# Public Network ACL Outbound Rule Number
variable "public_network_acl_outbound_rule_number" {
  default = 100
}
# Public Network ACL Inbound Rule action
variable "public_network_acl_inbound_rule_action" {
  default = "allow"
}
# Public Network ACL Outbound Rule action
variable "public_network_acl_outbound_rule_action" {
  default = "allow"
}

# Network ACL Private configuration

# Private Network ACL Name
variable "private_network_acl_name" {
  default = "Terraform Private subnet 1 ACL"
}
# Private Network ACL Inbound Rule Number
variable "private_network_acl_inbound_rule_number" {
  default = 100
}
# Private Network ACL Outbound Rule Number
variable "private_network_acl_outbound_rule_number" {
  default = 100
}
# Private Network ACL Inbound Rule action
variable "private_network_acl_inbound_rule_action" {
  default = "deny"
}
# Private Network ACL Outbound Rule action
variable "private_network_acl_outbound_rule_action" {
  default = "deny"
}
