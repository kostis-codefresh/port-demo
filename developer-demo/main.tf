terraform {
  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.9.6"
    }
  }

  backend "s3" {
    bucket = "kostis-terraform-state"
    key    = "port-developer-demo"
    region = "us-east-1"
  }
}

provider "port-labs" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}

resource "port-labs_blueprint" "microservice" {
  title       = "Micro Service"
  icon        = "Microservice"
  identifier  = "microservice"
  description = "Company Microservice"

  properties {
    identifier = "serviceName"
    title      = "Microservice name"
    type       = "string"
  }
  properties {
    identifier = "git"
    title      = "GitHub Repo"
    type       = "string"
    format     = "url"
  }
  properties {
    identifier = "description"
    title      = "Description"
    type       = "string"
  }

  relations {
    identifier = "deployedTo"
    required   = false
    target     = port-labs_blueprint.environment.identifier
    title      = "Deployed To"
  }

}

resource "port-labs_blueprint" "library" {
  title       = "Library"
  icon        = "SDK"
  identifier  = "library"
  description = "Company Approved Library"

  properties {
    identifier = "libraryName"
    title      = "Library name"
    type       = "string"
  }

    properties {
    identifier = "libraryVersion"
    title      = "Library version"
    type       = "string"
  }
  properties {
    identifier = "git"
    title      = "GitHub Repo"
    type       = "string"
    format     = "url"
  }
  properties {
    identifier = "pipeline"
    title      = "CI pipeline"
    type       = "string"
    format     = "url"
  }
  properties {
    identifier = "description"
    title      = "Description"
    type       = "string"
  }

  relations {
    identifier = "usedBy"
    required   = true
    target     = port-labs_blueprint.microservice.identifier
    title      = "Used By"
  }
}

resource "port-labs_blueprint" "environment" {
  title       = "Environment"
  icon        = "Cloud"
  identifier  = "environment"
  description = "Deployment Environment"

  properties {
    identifier = "environmentName"
    title      = "Environment name"
    type       = "string"
  }
  properties {
    identifier = "region"
    title      = "Region"
    type       = "string"
  }
  properties {
    identifier = "ip"
    title      = "IP"
    type       = "string"
    format     = "ipv4"
  }
  properties {
    identifier = "grafana"
    title      = "Grafana Link"
    type       = "string"
    format     = "url"
  }
  properties {
    identifier = "kubeconfig"
    title      = "KubeConfig"
    type       = "object"
  }


}

resource "port-labs_blueprint" "promotion" {
  title       = "Promotion"
  icon        = "Day2Operation"
  identifier  = "promotion"
  description = "Promotion history"

  properties {
    identifier = "when"
    title      = "When"
    type       = "number"
    format     = "date-time"
  }
  properties {
    identifier = "approver"
    title      = "Approved"
    type       = "string"
    format     = "user"
  }

  relations {
    identifier = "for"
    required   = true
    target     = port-labs_blueprint.microservice.identifier
    title      = "For"
  }
  relations {
    identifier = "source"
    required   = false
    target     = port-labs_blueprint.environment.identifier
    title      = "From"
  }

  relations {
    identifier = "target"
    required   = true
    target     = port-labs_blueprint.environment.identifier
    title      = "Target"
  }
}

resource "port-labs_blueprint" "build" {
  title       = "Build"
  icon        = "Codefresh"
  identifier  = "build"
  description = "Codefresh build"

  properties {
    identifier = "initiator"
    title      = "Initiator"
    type       = "string"
    format     = "user"
  }
  properties {
    identifier = "details"
    title      = "Details"
    type       = "string"
    format     = "url"
  }

  relations {
    identifier = "for"
    required   = true
    target     = port-labs_blueprint.microservice.identifier
    title      = "For"
  }
}

resource "port-labs_blueprint" "deployment" {
  title       = "Deployment"
  icon        = "Deployment"
  identifier  = "deployment"
  description = "Deployment"

  properties {
    identifier = "version"
    title      = "Version"
    type       = "string"
  }
  properties {
    identifier = "gitHash"
    title      = "Git Hash"
    type       = "string"
    format     = "url"
  }

  properties {
    identifier = "details"
    title      = "Details"
    type       = "string"
    format     = "url"
  }

  relations {
    identifier = "for"
    required   = true
    target     = port-labs_blueprint.microservice.identifier
    title      = "For"
  }
  relations {
    identifier = "target"
    required   = true
    target     = port-labs_blueprint.environment.identifier
    title      = "Target"
  }
}

