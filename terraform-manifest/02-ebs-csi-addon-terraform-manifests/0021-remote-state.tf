data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "eks-cluster-tf-mnm"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = var.aws_region
  }
}
