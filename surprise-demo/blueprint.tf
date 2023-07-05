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
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}

resource "port-labs_blueprint" "artist" {
  title       = "Artist"
  icon        = "OpsGenie"
  identifier  = "myBlueprint"
  description = "Music artist"

  properties {
    identifier = "artistName"
    title      = "Artist Name"
    type       = "string"
  }
  properties {
    identifier = "artistStyle"
    title      = "Artist Style"
    type       = "string"
  }
  properties {
    identifier = "artistFormationDate"
    title      = "Formet At"
    type       = "number"
  }
}

