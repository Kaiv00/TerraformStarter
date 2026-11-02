variable "environment" {
  description = "The target environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

variable "cluster_name" {
  description = "Name prefix for the infrastructure cluster"
  type        = string
  default     = "app-cluster"
}

variable "node_count" {
  description = "Number of nodes to deploy"
  type        = number
  default     = 3
}