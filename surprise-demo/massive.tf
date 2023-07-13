resource "port_entity" "massiveAttack" {
  identifier = "massiveAttack"
  title      = "Massive Attack"
  blueprint  = port_blueprint.artist.identifier

  properties = {
    "string_props" = {
      "artistName"    = "Massive Attack"
      "artistStyle"   = "Trip Hop"
      "artistCountry" = "England"
    }
    "number_props" = {
      "artistFormationDate" = 1998
    }
  }


}

######################### Albums ##################

resource "port_entity" "mezzanine" {
  identifier = "mezzanine"
  title      = "Mezzanine "
  blueprint  = port_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Mezzanine"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "1998"
  }
  relations {
    name       = "releasedBy"
    identifier = port_entity.massiveAttack.identifier

  }
}


resource "port_entity" "ritualSpirit" {
  identifier = "ritualSpirit"
  title      = "Ritual Spirit"
  blueprint  = port_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Ritual Spirit"
  }
  properties {
    name  = "type"
    value = "single"
  }
  properties {
    name  = "releaseDate"
    value = "2016"
  }
  relations {
    name       = "releasedBy"
    identifier = port_entity.massiveAttack.identifier

  }
}


######################### Songs ##################

resource "port_entity" "angel" {
  identifier = "angel"
  title      = "Angel"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Angel"
  }
  properties {
    name  = "trackNumber"
    value = "1"
  }
  properties {
    name  = "duration"
    value = "378"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.mezzanine.identifier

  }
}

resource "port_entity" "risingson" {
  identifier = "risingson"
  title      = "Risingson"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Risingson"
  }
  properties {
    name  = "trackNumber"
    value = "2"
  }
  properties {
    name  = "duration"
    value = "298"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.mezzanine.identifier

  }
}

resource "port_entity" "teardrop" {
  identifier = "teardrop"
  title      = "Teardrop"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Teardrop"
  }
  properties {
    name  = "trackNumber"
    value = "3"
  }
  properties {
    name  = "duration"
    value = "329"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.mezzanine.identifier

  }
}

resource "port_entity" "takeitthere" {
  identifier = "takeitthere"
  title      = "Take it There"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Take it There"
  }
  properties {
    name  = "trackNumber"
    value = "4"
  }
  properties {
    name  = "duration"
    value = "271"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.ritualSpirit.identifier

  }
}

resource "port_entity" "deadEditors" {
  identifier = "deadEditors"
  title      = "Dead Editors"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Dead Editors"
  }
  properties {
    name  = "trackNumber"
    value = "1"
  }
  properties {
    name  = "duration"
    value = "286"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.ritualSpirit.identifier

  }
}



resource "port_entity" "voodoo" {
  identifier = "voodoo"
  title      = "Voodoo in my blood"
  blueprint  = port_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Voodoo in my blood"
  }
  properties {
    name  = "trackNumber"
    value = "3"
  }
  properties {
    name  = "duration"
    value = "241"
  }
  relations {
    name       = "partOf"
    identifier = port_entity.ritualSpirit.identifier

  }
}