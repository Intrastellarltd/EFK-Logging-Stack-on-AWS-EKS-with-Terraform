variable "eks_oidc_root_ca_thumbprint" {
  type        = string
  description = "Thumbprint of Root CA for EKS OIDC, Valid until 2037"
  default     = "aaa68bb211d468db8a8a19561ccba2e4043dcc80"
}

# --- Generate OIDC Thumbprint ---
# echo | openssl s_client -connect oidc.eks.us-east-1.amazonaws.com:443 2>&- | openssl x509 -fingerprint -noout | sed 's/://g' | awk -F= '{print tolower($2)}'
