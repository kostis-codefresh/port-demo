resource "port_entity" "bonobo" {
  identifier = "bonobo"
  title      = "Bonobo"
  blueprint  = port_blueprint.artist.identifier

  properties = {
    "string_props" = {
      "artistName"    = "Bonobo"
      "artistStyle"   = "Nu Jazz"
      "artistCountry" = "England"
    }
    "number_props" = {
      "artistFormationDate" = 1999
    }
  }
}

######################### Albums ##################

resource "port_entity" "animalMagic" {
  identifier = "animalMagic"
  title      = "Animal Magic"
  blueprint  = port_blueprint.album.identifier

  properties = {
    "string_props" = {
      "albumName" = "Animal Magic"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2000
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.bonobo.identifier
    }
  }

}


resource "port_entity" "blackSands" {
  identifier = "blackSands"
  title      = "Black Sands"
  blueprint  = port_blueprint.album.identifier

  properties = {
    "string_props" = {
      "albumName" = "Black Sands"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2010
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.bonobo.identifier
    }
  }


}


######################### Songs ##################

resource "port_entity" "sleepySeven" {
  identifier = "sleepySeven"
  title      = "Sleepy Seven"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Sleepy Seven"
    }
    "number_props" = {
      "trackNumber" = 2
      "duration"    = 319
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.animalMagic.identifier
    }
  }


}

resource "port_entity" "dinosaurs" {
  identifier = "dinosaurs"
  title      = "Dinosaurs"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Dinosaurs"
    }
    "number_props" = {
      "trackNumber" = 3
      "duration"    = 237
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.animalMagic.identifier
    }
  }

}

resource "port_entity" "kota" {
  identifier = "kota"
  title      = "Kota"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Kota"
    }
    "number_props" = {
      "trackNumber" = 4
      "duration"    = 341
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.animalMagic.identifier
    }
  }


}

resource "port_entity" "prelude" {
  identifier = "prelude"
  title      = "Prelude"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Prelude"
    }
    "number_props" = {
      "trackNumber" = 1
      "duration"    = 78
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.blackSands.identifier
    }
  }


}

resource "port_entity" "kiara" {
  identifier = "kiara"
  title      = "Kiara"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Kiara"
    }
    "number_props" = {
      "trackNumber" = 2
      "duration"    = 230
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.blackSands.identifier
    }
  }


}



resource "port_entity" "kong" {
  identifier = "kong"
  title      = "Kong"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Kong"
    }
    "number_props" = {
      "trackNumber" = 3
      "duration"    = 238
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.blackSands.identifier
    }
  }


}