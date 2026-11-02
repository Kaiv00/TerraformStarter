variable "cluster_name" {
    description = "Name of the server cluster"
    type        = string
}

variable "node_count" {
    description = "Number of simulated nodes in the cluster"
    type        = number 
    default = 2
}

variable environment {
    description = "Deployment environment"
    type        = string
}