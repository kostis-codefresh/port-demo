resource "port-labs_entity" "apocalyptica" {
  identifier = "apocalyptica"
  title      = "Apocalyptica"
  blueprint  = port-labs_blueprint.artist.identifier

  properties {
    name  = "artistName"
    value = "Apocalyptica"
  }
  properties {
    name  = "artistStyle"
    value = "Symphonic metal"
  }
  properties {
    name  = "artistCountry"
    value = "Finland"
  }
  properties {
    name  = "artistFormationDate"
    value = "1993"
  }
}

######################### Albums ##################

resource "port-labs_entity" "worldsCollide" {
  identifier = "worldsCollide"
  title      = "Worlds Collide"
  blueprint  = port-labs_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Worlds Collide"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "2007"
  }
  relations {
    name       = "releasedBy"
    identifier = port-labs_entity.apocalyptica.identifier

  }
}


resource "port-labs_entity" "shadowmaker" {
  identifier = "shadowmaker"
  title      = "Shadowmaker"
  blueprint  = port-labs_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Shadowmaker"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "2015"
  }
  relations {
    name       = "releasedBy"
    identifier = port-labs_entity.apocalyptica.identifier

  }
}


######################### Songs ##################

resource "port-labs_entity" "lastHope" {
  identifier = "lastHope"
  title      = "Last Hope"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Last Hope"
  }
  properties {
    name  = "trackNumber"
    value = "7"
  }
  properties {
    name  = "duration"
    value = "287"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.worldsCollide.identifier

  }
}

resource "port-labs_entity" "burn" {
  identifier = "burn"
  title      = "Burn"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Burn"
  }
  properties {
    name  = "trackNumber"
    value = "9"
  }
  properties {
    name  = "duration"
    value = "256"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.worldsCollide.identifier

  }
}

resource "port-labs_entity" "peace" {
  identifier = "peace"
  title      = "Peace"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Peace"
  }
  properties {
    name  = "trackNumber"
    value = "11"
  }
  properties {
    name  = "duration"
    value = "349"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.worldsCollide.identifier

  }
}

resource "port-labs_entity" "houseOfChains" {
  identifier = "houseOfChains"
  title      = "House Of Chains"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "House Of Chains"
  }
  properties {
    name  = "trackNumber"
    value = "7"
  }
  properties {
    name  = "duration"
    value = "208"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.shadowmaker.identifier

  }
}

resource "port-labs_entity" "riotLights" {
  identifier = "riotLights"
  title      = "Riot Lights"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Riot Lights"
  }
  properties {
    name  = "trackNumber"
    value = "8"
  }
  properties {
    name  = "duration"
    value = "400"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.shadowmaker.identifier

  }
}



resource "port-labs_entity" "seaSong" {
  identifier = "seaSong"
  title      = "Kong"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Sea Song"
  }
  properties {
    name  = "trackNumber"
    value = "10"
  }
  properties {
    name  = "duration"
    value = "294"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.shadowmaker.identifier

  }
}