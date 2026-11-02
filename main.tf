terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.0"
    }
  }
}

provider "local" {}
provider "random" {}

# Call our reusable module
module "app_cluster" {
  source       = "./modules/server_cluster"
  cluster_name = var.cluster_name
  node_count   = var.node_count
  environment  = var.environment
}