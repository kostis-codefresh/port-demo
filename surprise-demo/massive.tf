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


  properties = {
    "string_props" = {
      "albumName" = "Mezzanine"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 1998
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.massiveAttack.identifier
    }
  }


}


resource "port_entity" "ritualSpirit" {
  identifier = "ritualSpirit"
  title      = "Ritual Spirit"
  blueprint  = port_blueprint.album.identifier

    properties = {
    "string_props" = {
      "albumName" = "Ritual Spirit"
      "type"      = "single"
    }
    "number_props" = {
      "releaseDate" = 2016
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.massiveAttack.identifier
    }
  }

}


######################### Songs ##################

resource "port_entity" "angel" {
  identifier = "angel"
  title      = "Angel"
  blueprint  = port_blueprint.song.identifier

    properties = {
    "string_props" = {
      "songName" = "Angel"
    }
    "number_props" = {
      "trackNumber" = 1
      "duration"    = 378
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.mezzanine.identifier
    }
  }

  
}

resource "port_entity" "risingson" {
  identifier = "risingson"
  title      = "Risingson"
  blueprint  = port_blueprint.song.identifier

     properties = {
    "string_props" = {
      "songName" = "Risingson"
    }
    "number_props" = {
      "trackNumber" = 2
      "duration"    = 298
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.mezzanine.identifier
    }
  }

 
}

resource "port_entity" "teardrop" {
  identifier = "teardrop"
  title      = "Teardrop"
  blueprint  = port_blueprint.song.identifier

    properties = {
    "string_props" = {
      "songName" = "Teardrop"
    }
    "number_props" = {
      "trackNumber" = 3
      "duration"    = 329
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.mezzanine.identifier
    }
  }

 
}

resource "port_entity" "takeitthere" {
  identifier = "takeitthere"
  title      = "Take it There"
  blueprint  = port_blueprint.song.identifier

   properties = {
    "string_props" = {
      "songName" = "Take it There"
    }
    "number_props" = {
      "trackNumber" = 4
      "duration"    = 271
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.ritualSpirit.identifier
    }
  }

 
}

resource "port_entity" "deadEditors" {
  identifier = "deadEditors"
  title      = "Dead Editors"
  blueprint  = port_blueprint.song.identifier

    properties = {
    "string_props" = {
      "songName" = "Dead Editors"
    }
    "number_props" = {
      "trackNumber" = 1
      "duration"    = 286
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.ritualSpirit.identifier
    }
  }


}



resource "port_entity" "voodoo" {
  identifier = "voodoo"
  title      = "Voodoo in my blood"
  blueprint  = port_blueprint.song.identifier

     properties = {
    "string_props" = {
      "songName" = "Voodoo in my blood"
    }
    "number_props" = {
      "trackNumber" = 3
      "duration"    = 241
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.ritualSpirit.identifier
    }
  }

 
}