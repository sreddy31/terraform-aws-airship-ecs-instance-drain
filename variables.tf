locals {
  create_count = var.create ? 1 : 0
}

variable "name" {
  type        = string
  description = "A preferably short unique identifier for this module"
}

variable "create" {
  default     = true
  description = "Whether to create everything related"
}

