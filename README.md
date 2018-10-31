# Google Cloud Platform Kubernetes Cluster Terraform Module
Google Cloud Platform Kubernetes Cluster Terraform Module

## Usage

```ruby
module "my-cluster" {
    name        = "my-cluster"
    
    network             = "${var.network}"
    subnetwork          = "${var.subnetwork}"
    zone                = "${var.zone}
    initial_node_count  = "3"


}
```
