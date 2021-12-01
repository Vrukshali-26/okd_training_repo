terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = "0.10.3"
    }
  }
}

variable "token" {
  type = string
}

provider "civo" {
  token = var.token
  region = "LON1"
}

resource "civo_kubernetes_cluster" "cluster" {
    name = "sample2"
    #region = "LON1"
    applications = "-Traefik,-metrics-server,argo-cd"
    num_target_nodes = 3
    target_nodes_size = "g3.k3s.medium"
}
