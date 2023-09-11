data "aws_caller_identity" "current" {}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

data "http" "ebs_csi_iam_policy" {
  url = "https://raw.githubusercontent.com/kubernetes-sigs/aws-ebs-csi-driver/master/docs/example-iam-policy.json"

  request_headers = {
    Accept = "application/json"
  }
}

output "ebs_csi_iam_policy" {
  value = data.http.ebs_csi_iam_policy.response_body
}
