terraform {
  required_providers {
    port = {
      source  = "port-labs/port-labs"
      version = "~> 1.0.0"
    }
  }

  backend "s3" {
    bucket = "kostis-terraform-state"
    key    = "port-surprise-demo"
    region = "us-east-1"
  }
}

provider "port" {
  client_id = var.port_client_id # or `PORT_CLIENT_ID`
  secret    = var.port_secret    # or `PORT_CLIENT_SECRET`
}

resource "port_blueprint" "artist" {
  title       = "Artist"
  icon        = "OpsGenie"
  identifier  = "artist"
  description = "Music artist"

  properties = {
    string_props = {
      "artistName" = {
        title = "Artist Name"
      }
      "artistCountry" = {
        title = "Artist Country"
      }
      "artistStyle" = {
        title = "Artist Style"
      }
    }
    number_props = {
      "artistFormationDate" = {
        title = "Formed At"
      }
    }
  }


}

resource "port_blueprint" "album" {
  title       = "Album"
  icon        = "Box"
  identifier  = "album"
  description = "Music album"


  properties = {
    string_props = {
      "albumName" = {
        title = "Album Name"
      }
      type = {
        title = "Type"
        enum  = ["single", "album", "demo"]
        enum_colors = {
          single = "yellow",
          album  = "green",
          demo   = "red",
        }
      }
    }
    number_props = {
      "releaseDate" = {
        title = "Released At"
      }
    }
  }

  relations = {
    "releasedBy" = {
      title    = "Released by"
      required = true
      target   = port_blueprint.artist.identifier
    }
  }

}

resource "port_blueprint" "song" {
  title       = "Song"
  icon        = "Star"
  identifier  = "song"
  description = "Music song"


  properties = {
    string_props = {
      "songName" = {
        title = "Song Name"
      }
    }
    number_props = {
      "trackNumber" = {
        title = "Track No"
      }
      "duration" = {
        title = "Duration"
      }
    }
  }

  relations = {
    "partOf" = {
      title    = "Part of"
      required = true
      target   = port_blueprint.album.identifier
    }
  }




}

