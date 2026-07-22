locals {

  labels = {
    "app.kubernetes.io/name"       = var.name
    "app.kubernetes.io/component"  = "reverse-proxy"
    "app.kubernetes.io/managed-by" = "terraform"
    "app.kubernetes.io/part-of"    = "platform-infra"
  }

}