variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "EKS Cluster Service IPv4 CIDR"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "EKS cluster Version"
  type        = string
  default     = null
}
variable "cluster_endpoint_private_access" {
  description = "EKS  endpoint private access"
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "EKS Cluster Endpoint Public Access"
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "EKS Cluster Endpoint Public Access CIDRs"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
