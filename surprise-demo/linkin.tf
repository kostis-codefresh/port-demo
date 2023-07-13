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

  properties = {
    "string_props" = {
      "albumName" = "Hybrid Theory"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2000
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.linkinpark.identifier
    }
  }


}


resource "port_entity" "meteora" {
  identifier = "meteora"
  title      = "Meteora"
  blueprint  = port_blueprint.album.identifier

  properties = {
    "string_props" = {
      "albumName" = "Meteora"
      "type"      = "album"
    }
    "number_props" = {
      "releaseDate" = 2003
    }

  }

  relations = {
    single_relations = {
      "releasedBy" = port_entity.linkinpark.identifier
    }
  }


}


######################### Songs ##################

resource "port_entity" "papercut" {
  identifier = "papercut"
  title      = "Papercut"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Papercut"
    }
    "number_props" = {
      "trackNumber" = 1
      "duration"    = 184
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.hybridTheory.identifier
    }
  }


}

resource "port_entity" "onestepcloser" {
  identifier = "onestepcloser"
  title      = "One Step Closer"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "One Step Closer"
    }
    "number_props" = {
      "trackNumber" = 2
      "duration"    = 155
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.hybridTheory.identifier
    }
  }


}

resource "port_entity" "points" {
  identifier = "points"
  title      = "Points of Authority"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Points of Authority"
    }
    "number_props" = {
      "trackNumber" = 4
      "duration"    = 200
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.hybridTheory.identifier
    }
  }


}

resource "port_entity" "hitTheFloor" {
  identifier = "hitTheFloor"
  title      = "Hit The Floor"
  blueprint  = port_blueprint.song.identifier

  properties = {
    "string_props" = {
      "songName" = "Hit The Floor"
    }
    "number_props" = {
      "trackNumber" = 5
      "duration"    = 164
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.meteora.identifier
    }
  }


}

resource "port_entity" "faint" {
  identifier = "faint"
  title      = "Faint"
  blueprint  = port_blueprint.song.identifier


  properties = {
    "string_props" = {
      "songName" = "Faint"
    }
    "number_props" = {
      "trackNumber" = 7
      "duration"    = 162
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.meteora.identifier
    }
  }


}



resource "port_entity" "numb" {
  identifier = "numb"
  title      = "Numb"
  blueprint  = port_blueprint.song.identifier


  properties = {
    "string_props" = {
      "songName" = "Faint"
    }
    "number_props" = {
      "trackNumber" = 13
      "duration"    = 187
    }
  }

  relations = {
    single_relations = {
      "partOf" = port_entity.meteora.identifier
    }
  }


}