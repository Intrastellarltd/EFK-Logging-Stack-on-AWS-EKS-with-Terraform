variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "us-east-1"
}
# Environment Variable
variable "environment" {
  description = "environment"
  type        = string
  default     = "dev"
}
# Business Division
variable "business_division" {
  description = "business_division"
  type        = string
  default     = "DevOps"
}
