terraform {
  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.9.6"
    }
  }

  backend "s3" {
    bucket = "kostis-terraform-state"
    key    = "port-surprise-demo"
    region = "us-east-1"
  }
}

provider "port-labs" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}

resource "port-labs_blueprint" "artist" {
  title       = "Artist"
  icon        = "OpsGenie"
  identifier  = "artist"
  description = "Music artist"

  properties {
    identifier = "artistName"
    title      = "Artist Name"
    type       = "string"
  }
  properties {
    identifier = "artistCountry"
    title      = "Artist Country"
    type       = "string"
  }
  properties {
    identifier = "artistStyle"
    title      = "Artist Style"
    type       = "string"
  }
  properties {
    identifier = "artistFormationDate"
    title      = "Formed At"
    type       = "number"
  }

}

resource "port-labs_blueprint" "album" {
  title       = "Album"
  icon        = "Box"
  identifier  = "album"
  description = "Music album"

  properties {
    identifier = "albumName"
    title      = "Album Name"
    type       = "string"
  }
  properties {
    identifier = "type"
    title      = "Type"
    type       = "string"
    enum       = ["single", "album", "demo"]
    enum_colors = {
      single = "yellow",
      album  = "green",
      demo   = "red",
    }

  }
  properties {
    identifier = "releaseDate"
    title      = "Released At"
    type       = "number"
  }

  relations {
    identifier = "releasedBy"
    required   = true
    target     = port-labs_blueprint.artist.identifier
    title      = "Released by"
  }

}

resource "port-labs_blueprint" "song" {
  title       = "Song"
  icon        = "Star"
  identifier  = "song"
  description = "Music song"

  properties {
    identifier = "songName"
    title      = "Song Name"
    type       = "string"
  }
  properties {
    identifier = "trackNumber"
    title      = "Track No"
    type       = "number"
  }
  properties {
    identifier = "duration"
    title      = "Duration"
    type       = "number"
  }

  relations {
    identifier = "partOf"
    required   = true
    target     = port-labs_blueprint.album.identifier
    title      = "Part of"
  }
}
