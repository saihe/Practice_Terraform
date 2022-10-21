terraform {
  required_providers {
    kind = {
      source  = "kyma-incubator/kind"
      version = "0.0.11"
    }
  }
}

resource "kind_cluster" "sample" {
  name           = "practice-cluster"     # required
  node_image     = "kindest/node:v1.25.2" # optional
}
