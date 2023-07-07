



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

resource "port-labs_entity" "linkinpark" {
  identifier = "linkinpark"
  title      = "Linkin Park"
  blueprint  = port-labs_blueprint.artist.identifier

  properties {
    name  = "artistName"
    value = "Linkin Park"
  }
  properties {
    name  = "artistStyle"
    value = "Alternative Rock"
  }
  properties {
    name  = "artistCountry"
    value = "USA"
  }
  properties {
    name  = "artistFormationDate"
    value = "1996"
  }
}