resource "civo_kubernetes_cluster" "cluster" {
    name = "sample2"
    #region = "LON1"
    applications = "-Traefik,-metrics-server,argo-cd"
    num_target_nodes = 3
    target_nodes_size = "g3.k3s.medium"
}
