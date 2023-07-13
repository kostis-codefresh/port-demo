resource "port_entity" "linkinpark" {
  identifier = "linkinpark"
  title      = "Linkin Park"
  blueprint  = port_blueprint.artist.identifier

  properties = {
    "string_props" = {
      "artistName"    = "Linkin Park"
      "artistStyle"   = "Alternative Rock"
      "artistCountry" = "USA"
    }
    "number_props" = {
      "artistFormationDate" = 1996
    }
  }


}

######################### Albums ##################

resource "port_entity" "hybridTheory" {
  identifier = "hybridTheory"
  title      = "Hybrid Theory"
  blueprint  = port_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Hybrid Theory"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "2000"
  }
  relations {
    name       = "releasedBy"
    identifier = port_entity.linkinpark.identifier

  }
}


resource "port_entity" "meteora" {
  identifier = "meteora"
  title      = "Meteora"
  blueprint  = port_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Meteora"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "2003"
  }
  relations {
    name       = "releasedBy"
    identifier = port_entity.linkinpark.identifier

  }
}


######################### Songs ##################

resource "port_entity" "papercut" {
  identifier = "papercut"
  title      = "Papercut"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Papercut"
  }
  properties {
    name  = "trackNumber"
    value = "1"
  }
  properties {
    name  = "duration"
    value = "184"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.hybridTheory.identifier

  }
}

resource "port_entity" "onestepcloser" {
  identifier = "onestepcloser"
  title      = "One Step Closer"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "One Step Closer"
  }
  properties {
    name  = "trackNumber"
    value = "2"
  }
  properties {
    name  = "duration"
    value = "155"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.hybridTheory.identifier

  }
}

resource "port_entity" "points" {
  identifier = "points"
  title      = "Points of Authority"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Points of Authority"
  }
  properties {
    name  = "trackNumber"
    value = "4"
  }
  properties {
    name  = "duration"
    value = "200"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.hybridTheory.identifier

  }
}

resource "port_entity" "hitTheFloor" {
  identifier = "hitTheFloor"
  title      = "Hit The Floor"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Hit The Floor"
  }
  properties {
    name  = "trackNumber"
    value = "5"
  }
  properties {
    name  = "duration"
    value = "164"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.meteora.identifier

  }
}

resource "port_entity" "faint" {
  identifier = "faint"
  title      = "Faint"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Faint"
  }
  properties {
    name  = "trackNumber"
    value = "7"
  }
  properties {
    name  = "duration"
    value = "162"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.meteora.identifier

  }
}



resource "port_entity" "numb" {
  identifier = "numb"
  title      = "Numb"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Numb"
  }
  properties {
    name  = "trackNumber"
    value = "13"
  }
  properties {
    name  = "duration"
    value = "187"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.meteora.identifier

  }
}