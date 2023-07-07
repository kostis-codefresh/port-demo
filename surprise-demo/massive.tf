resource "port-labs_entity" "massiveAttack" {
  identifier = "massiveAttack"
  title      = "Massive Attack"
  blueprint  = port-labs_blueprint.artist.identifier

  properties {
    name  = "artistName"
    value = "Massive Attack"
  }
  properties {
    name  = "artistStyle"
    value = "Trip Hop"
  }

  properties {
    name  = "artistCountry"
    value = "England"
  }
  properties {
    name  = "artistFormationDate"
    value = "1998"
  }
}

######################### Albums ##################

resource "port-labs_entity" "mezzanine" {
  identifier = "mezzanine"
  title      = "Mezzanine "
  blueprint  = port-labs_blueprint.album.identifier

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
    identifier = port-labs_entity.massiveAttack.identifier

  }
}


resource "port-labs_entity" "ritualSpirit" {
  identifier = "ritualSpirit"
  title      = "Ritual Spirit"
  blueprint  = port-labs_blueprint.album.identifier

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
    identifier = port-labs_entity.massiveAttack.identifier

  }
}


######################### Songs ##################

resource "port-labs_entity" "angel" {
  identifier = "angel"
  title      = "Angel"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.mezzanine.identifier

  }
}

resource "port-labs_entity" "risingson" {
  identifier = "risingson"
  title      = "Risingson"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.mezzanine.identifier

  }
}

resource "port-labs_entity" "teardrop" {
  identifier = "teardrop"
  title      = "Teardrop"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.mezzanine.identifier

  }
}

resource "port-labs_entity" "takeitthere" {
  identifier = "takeitthere"
  title      = "Take it There"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.ritualSpirit.identifier

  }
}

resource "port-labs_entity" "deadEditors" {
  identifier = "deadEditors"
  title      = "Dead Editors"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.ritualSpirit.identifier

  }
}



resource "port-labs_entity" "voodoo" {
  identifier = "voodoo"
  title      = "Voodoo in my blood"
  blueprint  = port-labs_blueprint.song.identifier

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
    identifier = port-labs_entity.ritualSpirit.identifier

  }
}