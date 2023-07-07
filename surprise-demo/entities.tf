



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

