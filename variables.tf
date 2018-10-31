
variable "cluster_name" {
    type    = "string"
}
variable "network_name" {
    type    = "string"
}
variable "subnetwork_name" {
    type    = "string"
}
variable "zone" {
    type    = "string"
}
variable "additional_zones" {
    type    = "list"
    default = []
}
variable "username" {
    type    = "string"
    default = "admin"
}
variable "password" {
    type    = "string"
    default = ""
}

variable "initial_node_count" {
    type    = "string"
    default = "1"
}
variable "machine_type" {
    type    = "string"
    default = "n1-standard-1"
}
