resource "port_entity" "apocalyptica" {
  identifier = "apocalyptica"
  title      = "Apocalyptica"
  blueprint  = port_blueprint.artist.identifier


  properties = {
    "string_props" = {
      "artistName"    = "Apocalyptica"
      "artistStyle"   = "Symphonic metal"
      "artistCountry" = "Finland"
    }
    "number_props" = {
      "artistFormationDate" = 1993
    }
  }



}

######################### Albums ##################

resource "port_entity" "worldsCollide" {
  identifier = "worldsCollide"
  title      = "Worlds Collide"
  blueprint  = port_blueprint.album.identifier


  properties = {
    "string_props" = {
      "albumName" = "Worlds Collide"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2007
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.apocalyptica.identifier
    }
  }

}


resource "port_entity" "shadowmaker" {
  identifier = "shadowmaker"
  title      = "Shadowmaker"
  blueprint  = port_blueprint.album.identifier

  properties = {
    "string_props" = {
      "albumName" = "Shadowmaker"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2015
    }
  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.apocalyptica.identifier
    }
  }

}


######################### Songs ##################

resource "port_entity" "lastHope" {
  identifier = "lastHope"
  title      = "Last Hope"
  blueprint  = port_blueprint.song.identifier


  properties = {
    "string_props" = {
      "songName" = "Last Hope"
    }
    "number_props" = {
      "trackNumber" = 7
      "duration"    = 287
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.worldsCollide.identifier
    }
  }


}

resource "port_entity" "burn" {
  identifier = "burn"
  title      = "Burn"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Burn"
    }
    "number_props" = {
      "trackNumber" = 9
      "duration"    = 256
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.worldsCollide.identifier
    }
  }


}

resource "port_entity" "peace" {
  identifier = "peace"
  title      = "Peace"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Peace"
    }
    "number_props" = {
      "trackNumber" = 11
      "duration"    = 349
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.worldsCollide.identifier
    }
  }


}

resource "port_entity" "houseOfChains" {
  identifier = "houseOfChains"
  title      = "House Of Chains"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "House Of Chains"
    }
    "number_props" = {
      "trackNumber" = 7
      "duration"    = 208
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.shadowmaker.identifier
    }
  }


}

resource "port_entity" "riotLights" {
  identifier = "riotLights"
  title      = "Riot Lights"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Riot Lights"
    }
    "number_props" = {
      "trackNumber" = 8
      "duration"    = 400
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.shadowmaker.identifier
    }
  }


}



resource "port_entity" "seaSong" {
  identifier = "seaSong"
  title      = "Kong"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Sea Song"
    }
    "number_props" = {
      "trackNumber" = 10
      "duration"    = 294
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.shadowmaker.identifier
    }
  }


}