output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "VPC CIDR Block"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "Private Subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public Subnets"
  value       = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "NAT Gateway Public Elastic IPs "
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "Availability Zones"
  value       = module.vpc.azs
}
