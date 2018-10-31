# Google Cloud Platform Kubernetes Cluster Terraform Module
Use this Terraform module to easily create a Kubernetes cluster on Google Cloud Platform (GCP)'s Google Kubernetes Engine (GKE). 

## Usage

```ruby
module "my-cluster" {
    name        = "my-cluster"
    
    network             = "default"
    subnetwork          = "us-central1"
    zone                = "us-central1-a"
    initial_node_count  = "3"
}
```


## Inputs

| Name                  | Description                                              |  Type  | Default | Required |
|:----------------------|:---------------------------------------------------------|:------:|:-------:|:--------:|
| `name`                | The name of the cluster.                                 | string |    -    |   yes    |
| `network`             | The name of the network                 .                | string |   ``    |   yes    |
| `subnetwork`          | The name of the subnetwork.                              | string |    -    |   yes    |
| `zone`                | The name of the zone.                                    | string |    -    |   yes    |
| `additional_zones`    | The names of the additional zones.                       | list   |    -    |   no     |


## Outputs

| Name                  | Description                                              |
|:----------------------|:---------------------------------------------------------|
| `endpoint`            |                                                          |


