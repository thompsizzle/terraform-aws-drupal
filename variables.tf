variable "environment" {
  description = "Set the environment for tagging"
  type        = string
  default     = "dev"
}

variable "vpc_name" {
  description = "VPC name (leave empty to use default VPC)"
  type        = string
  default     = null
}