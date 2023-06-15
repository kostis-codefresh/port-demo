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
  title      = "My blueprint"
  icon       = "Codefresh"
  identifier = "myBlueprint"
  description = "From terraform"

   properties {
    identifier  = "demoProp"
    title = "Demo title"
    type="string"
  }
}

resource "port-labs_entity" "myEntity" {
  identifier = "myEntity"
  title      = "My Entity"
  blueprint  = port-labs_blueprint.myBlueprint.identifier

  properties {
    name  = "demoProp"
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