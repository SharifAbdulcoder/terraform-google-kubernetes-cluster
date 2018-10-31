output "cluster_endpoint" {
    value = "${google_container_cluster.default.endpoint}"
}
output "cluster_instance_group_urls" {
    value = "${google_container_cluster.default.instance_group_urls}"
}
output "cluster_node_config" {
    value = "${google_container_cluster.default.node_config}"
}
output "cluster_node_pools" {
    value = "${google_container_cluster.default.node_pool}"
}
output "cluster_username" {
    value = "${google_container_cluster.default.master_auth.0.username}"
}
output "cluster_password" {
    value = "${google_container_cluster.default.master_auth.0.password}"
}
output "cluster_client_certificate" {
    value = "${google_container_cluster.default.master_auth.0.client_certificate}"
}
output "cluster_client_key" {
    value = "${google_container_cluster.default.master_auth.0.client_key}"
}
output "cluster_ca_certificate" {
    value = "${google_container_cluster.default.master_auth.0.cluster_ca_certificate}"
}
