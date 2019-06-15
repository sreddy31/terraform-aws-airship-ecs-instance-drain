variable "region" {
  description = "The AWS region to deploy in"
  default     = "eu-west-1"
  type        = "string"
}

variable "create" {
  default     = true
  description = "Whether to create everything related"
}
