cluster_name                         = "eks-cluster-terraform"
cluster_service_ipv4_cidr            = "172.20.0.0/16"
cluster_version                      = "1.27"
cluster_endpoint_private_access      = false
cluster_endpoint_public_access       = true
cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]
eks_oidc_root_ca_thumbprint          = "aaa68bb211d468db8a8a19561ccba2e4043dcc80"
