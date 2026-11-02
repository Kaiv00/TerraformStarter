resource "random_id" "node_ids" {
  count       = var.node_count
  byte_length = 4
}

# Déclaration correcte du bloc locals et de la variable interne
locals {
  cluster_nodes = [
    for i in range(var.node_count) : {
      node_index = i + 1
      node_id    = random_id.node_ids[i].hex
      hostname   = "${var.environment}-${var.cluster_name}-node-${i + 1}"
      status     = "ONLINE"
    }
  ]
}

# Cette ressource simule l'écriture de la configuration du cluster dans un fichier local
resource "local_file" "cluster_config" {
  filename = "${path.root}/output_${var.environment}_${var.cluster_name}.json"
  content  = jsonencode({
    cluster_name = var.cluster_name
    environment  = var.environment
    nodes        = local.cluster_nodes
  })
}
