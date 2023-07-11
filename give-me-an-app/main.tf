terraform {

  backend "kubernetes" {
    secret_suffix = "create-app"
    config_path   = "~/.kube/config"
  }

  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.9.6"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }

}

provider "port-labs" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}
