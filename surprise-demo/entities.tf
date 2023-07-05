resource "port-labs_entity" "myEntity" {
  identifier = "myEntity"
  title      = "My Entity"
  blueprint  = port-labs_blueprint.artist.identifier

  properties {
    name  = "artistName"
    value = "Example microservice"
  }
  #   properties {
  #     name  = "myNumberProp"
  #     value = 1
  #   }
  #   properties {
  #     name  = "myArrayProp"
  #     items = ["#rnd", "#deployments"]
  #   }
  #   properties {
  #     name  = "myObjectProp"
  #     value = jsonencode({ "foo" : "bar" })
  #   }
  #   properties {
  #     name  = "myBoolProp"
  #     value = true
  #   }
}