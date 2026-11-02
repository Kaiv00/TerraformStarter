output "cluster_summary" {
  description = "Summary of the simulated cluster nodes"
  value       = [for node in local.cluster_nodes : "${node.hostname} (ID: ${node.node_id})"]
}

output "config_file_path" {
  description = "Path where the simulated cluster configuration was written"
  value       = local_file.cluster_config.filename
}