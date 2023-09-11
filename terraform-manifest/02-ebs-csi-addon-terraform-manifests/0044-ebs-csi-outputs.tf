output "ebs_eks_addon_arn" {
  description = "ebs_eks_addon_arn"
  value       = aws_eks_addon.ebs_eks_addon.arn
}
output "ebs_eks_addon_id" {
  description = "ebs_eks_addon_id"
  value       = aws_eks_addon.ebs_eks_addon.id
}
