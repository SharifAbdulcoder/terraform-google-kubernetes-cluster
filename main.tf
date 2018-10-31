resource "google_container_cluster" "default" {
    name                = "${var.cluster_name}"
    network             = "${var.network_name}"
    subnetwork          = "${var.subnetwork_name}"
    zone                = "${var.zone}"

#   additional_zones = [
#     "us-central1-b",
#     "us-central1-c",
#   ]

    master_auth {
        username        = "${length(var.password) > 0 ? var.username : "admin"}"
        password        = "${length(var.password) > 0 ? var.password : random_string.password.result}"
    }

    initial_node_count  = "${var.initial_node_count}"

    node_config {
        machine_type    = "${var.machine_type}" 
        oauth_scopes    = [
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]
    }
}

resource "random_string" "password" {
    length  = 16
    special = true
    number  = true
    lower   = true
    upper   = true
}

