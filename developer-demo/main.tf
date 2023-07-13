terraform {
  required_providers {
    port = {
      source  = "port-labs/port-labs"
      version = "~> 1.0.0"
    }
  }

  backend "s3" {
    bucket = "kostis-terraform-state"
    key    = "port-developer-demo"
    region = "us-east-1"
  }
}

provider "port" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}

resource "port_blueprint" "microservice" {
  title       = "Micro Service"
  icon        = "Microservice"
  identifier  = "microservice"
  description = "Company Microservice"

  properties = {
    string_props = {
      "serviceName" = {
        title = "Microservice name"
      }
      "git" = {
        title  = "GitHub Repo"
        format = "url"
      }
      "description" = {
        title = "Description"
      }
    }

  }


  relations = {
    "deployedTo" = {
      title    = "Deployed To"
      required = false
      target   = port_blueprint.environment.identifier
    }
  }



}

resource "port_blueprint" "library" {
  title       = "Library"
  icon        = "SDK"
  identifier  = "library"
  description = "Company Approved Library"


  properties = {
    string_props = {
      "libraryName" = {
        title = "Library name"
      }
      "libraryVersion" = {
        title = "Library version"

      }
      "git" = {
        title  = "GitHub Repo"
        format = "url"
      }
      "pipeline" = {
        title  = "CI pipeline"
        format = "url"
      }
      "description" = {
        title = "Description"
      }
    }

  }

  relations = {
    "usedBy" = {
      title    = "Used By"
      required = true
      target   = port_blueprint.microservice.identifier
    }
  }



}

resource "port_blueprint" "environment" {
  title       = "Environment"
  icon        = "Cloud"
  identifier  = "environment"
  description = "Deployment Environment"

  properties = {
    string_props = {
      "environmentName" = {
        title = "Environment name"
      }
      "region" = {
        title = "Region"

      }
      "grafana" = {
        title  = "Grafana Link"
        format = "url"
      }
      "location" = {
        title  = "Location"
        format = "url"
      }
      "version" = {
        title = "Version"
      }
    }
  }
}

resource "port_blueprint" "promotion" {
  title       = "Promotion"
  icon        = "Day2Operation"
  identifier  = "promotion"
  description = "Promotion history"


  properties = {
    string_props = {
      "when" = {
        title  = "When"
        format = "date-time"
      }
      "approver" = {
        title  = "Approver"
        format = "user"

      }
    }
  }

  relations = {
    "for" = {
      title    = "For"
      required = true
      target   = port_blueprint.microservice.identifier
    }
    "source" = {
      title    = "From"
      required = false
      target   = port_blueprint.environment.identifier
    }
    "target" = {
      title    = "Target"
      required = true
      target   = port_blueprint.environment.identifier
    }
  }



}

resource "port_blueprint" "build" {
  title       = "Build"
  icon        = "Codefresh"
  identifier  = "build"
  description = "Codefresh build"

  properties = {
    string_props = {
      "details" = {
        title  = "Details"
        format = "url"
      }
      "initiator" = {
        title  = "Initiator"
        format = "user"

      }
    }
  }

  relations = {
    "for" = {
      title    = "For"
      required = true
      target   = port_blueprint.microservice.identifier
    }
  }




}

resource "port_blueprint" "deployment" {
  title       = "Deployment"
  icon        = "Deployment"
  identifier  = "deployment"
  description = "Deployment"


  properties = {
    string_props = {
      "Version" = {
        title = "Version"
      }
      "gitHash" = {
        title  = "Git Hash"
        format = "url"

      }
      "details" = {
        title  = "Details"
        format = "url"

      }
    }
  }

  relations = {
    "for" = {
      title    = "For"
      required = true
      target   = port_blueprint.microservice.identifier
    }

    "target" = {
      title    = "Target"
      required = true
      target   = port_blueprint.environment.identifier
    }
  }




}

