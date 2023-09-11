output "cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_arn" {
  description = "EKS Cluster ARN"
  value       = aws_eks_cluster.eks_cluster.arn
}

output "cluster_certificate_authority_data" {
  description = "EKS Cluster Certificate Authority Data"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_version" {
  description = "EKS Cluster Version"
  value       = aws_eks_cluster.eks_cluster.version
}

output "cluster_iam_role_name" {
  description = "EKS Cluster IAM Role Name"
  value       = aws_iam_role.eks_master_role.name
}

output "cluster_iam_role_arn" {
  description = "EKS Cluster IAM Role ARN"
  value       = aws_iam_role.eks_master_role.arn
}

output "cluster_oidc_issuer_url" {
  description = "EKS Cluster_ OIDC Issuer URL"
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_primary_security_group_id" {
  description = "EKS Cluster Primary Security Group ID"
  value       = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}

# EKS Node Group Outputs - Public
output "node_group_public_id" {
  description = "node_group_public_id"
  value       = aws_eks_node_group.eks_ng_public.id
}

output "node_group_public_arn" {
  description = "node_group_public_arn"
  value       = aws_eks_node_group.eks_ng_public.arn
}

output "node_group_public_status" {
  description = "node_group_public_status"
  value       = aws_eks_node_group.eks_ng_public.status
}

output "node_group_public_version" {
  description = "node_group_public_version"
  value       = aws_eks_node_group.eks_ng_public.version
}
