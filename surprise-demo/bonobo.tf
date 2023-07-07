resource "port-labs_entity" "bonobo" {
  identifier = "bonobo"
  title      = "Bonobo"
  blueprint  = port-labs_blueprint.artist.identifier

  properties {
    name  = "artistName"
    value = "Bonobo"
  }
  properties {
    name  = "artistStyle"
    value = "Nu Jazz"
  }
  properties {
    name  = "artistCountry"
    value = "England"
  }
  properties {
    name  = "artistFormationDate"
    value = "1999"
  }
}

######################### Albums ##################

resource "port-labs_entity" "animalMagic" {
  identifier = "animalMagic"
  title      = "Animal Magic"
  blueprint  = port-labs_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Animal Magic"
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
    identifier = port-labs_entity.bonobo.identifier

  }
}


resource "port-labs_entity" "blackSands" {
  identifier = "blackSands"
  title      = "Black Sands"
  blueprint  = port-labs_blueprint.album.identifier

  properties {
    name  = "albumName"
    value = "Black Sands"
  }
  properties {
    name  = "type"
    value = "album"
  }
  properties {
    name  = "releaseDate"
    value = "2010"
  }
  relations {
    name       = "releasedBy"
    identifier = port-labs_entity.bonobo.identifier

  }
}


######################### Songs ##################

resource "port-labs_entity" "sleepySeven" {
  identifier = "sleepySeven"
  title      = "Sleepy Seven"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Sleepy Seven"
  }
  properties {
    name  = "trackNumber"
    value = "2"
  }
  properties {
    name  = "duration"
    value = "319"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.animalMagic.identifier

  }
}

resource "port-labs_entity" "dinosaurs" {
  identifier = "dinosaurs"
  title      = "Dinosaurs"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Dinosaurs"
  }
  properties {
    name  = "trackNumber"
    value = "3"
  }
  properties {
    name  = "duration"
    value = "237"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.animalMagic.identifier

  }
}

resource "port-labs_entity" "kota" {
  identifier = "kota"
  title      = "Kota"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Kota"
  }
  properties {
    name  = "trackNumber"
    value = "4"
  }
  properties {
    name  = "duration"
    value = "341"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.animalMagic.identifier

  }
}

resource "port-labs_entity" "prelude" {
  identifier = "prelude"
  title      = "Prelude"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Prelude"
  }
  properties {
    name  = "trackNumber"
    value = "1"
  }
  properties {
    name  = "duration"
    value = "78"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.blackSands.identifier

  }
}

resource "port-labs_entity" "kiara" {
  identifier = "kiara"
  title      = "Kiara"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Kiara"
  }
  properties {
    name  = "trackNumber"
    value = "2"
  }
  properties {
    name  = "duration"
    value = "230"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.blackSands.identifier

  }
}



resource "port-labs_entity" "kong" {
  identifier = "kong"
  title      = "Kong"
  blueprint  = port-labs_blueprint.song.identifier

  properties {
    name  = "songName"
    value = "Kong"
  }
  properties {
    name  = "trackNumber"
    value = "3"
  }
  properties {
    name  = "duration"
    value = "238"
  }
  relations {
    name       = "partOf"
    identifier = port-labs_entity.blackSands.identifier

  }
}