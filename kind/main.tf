terraform {
  required_providers {
    kind = {
      source  = "kyma-incubator/kind"
      version = "0.0.11"
    }
  }
}

resource "kind_cluster" "default" {
  name       = "practice-cluster"     # required
  node_image = "kindest/node:v1.16.1" # optional
}

resource "kubernetes_deployment" "test" {
  metadata {
    name = "nginx-practice-deployment"
  }

  spec {
    selector {
      match_labels = {
        app = "nginx-sample-deployment"
      }
    }
    replicas = 3
    template {
      metadata {
        labels = {
          app = "nginx-sample-deployment"
        }
      }
      spec {
        container {
          name  = "nignx"
          image = "nginx:latest"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
