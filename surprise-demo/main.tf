terraform {
  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.9.6"
    }
  }
}

provider "port-labs" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret = var.port_secret # or `PORT_CLIENT_SECRET`
}

resource "port-labs_blueprint" "myBlueprint" {
  title      = "Artist"
  icon       = "OpsGenie"
  identifier = "myBlueprint"
  description = "Music artist"

   properties {
    identifier  = "artistName"
    title = "Artist Name"
    type="string"
  }
     properties {
    identifier  = "artistStyle"
    title = "Artist Style"
    type="string"
  }
     properties {
    identifier  = "artistFormationDate"
    title = "Formet At"
    type="number"
  }
}

resource "port-labs_entity" "myEntity" {
  identifier = "myEntity"
  title      = "My Entity"
  blueprint  = port-labs_blueprint.myBlueprint.identifier

  properties {
    name  = "artistName"
    value = "Example microservice"
  }
#   properties {
#     name  = "myNumberProp"
#     value = 1
#   }
#   properties {
#     name  = "myArrayProp"
#     items = ["#rnd", "#deployments"]
#   }
#   properties {
#     name  = "myObjectProp"
#     value = jsonencode({ "foo" : "bar" })
#   }
#   properties {
#     name  = "myBoolProp"
#     value = true
#   }
}