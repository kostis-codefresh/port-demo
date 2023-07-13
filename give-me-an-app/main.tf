terraform {

  backend "kubernetes" {
    secret_suffix = "create-app"
    config_path   = "~/.kube/config"
  }

  required_providers {
    port = {
      source  = "port-labs/port-labs"
      version = "~> 1.0.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }

}

provider "port" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}
