output "deployment_environment" {
  description = "The active environment"
  value       = var.environment
}

output "cluster_nodes" {
  description = "Details of all deployed simulated nodes"
  value       = module.app_cluster.cluster_summary
}

output "generated_config_file" {
  description = "Path to the configuration artifact"
  value       = module.app_cluster.config_file_path
}