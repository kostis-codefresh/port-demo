resource "port_action" "create_everything" {
  title             = "Create Everything"
  icon              = "AWS"
  identifier        = "create_microservice"
  blueprint         = port_blueprint.microservice.identifier
  trigger           = "CREATE"
  description       = "Create a microservice and associated infra"
  required_approval = false

  github_method = {
    org                  = "kostis-codefresh"
    repo                 = "port-demo"
    workflow             = "create-microservice.yml"
    omitPayload          = false
    omitUserInputs       = true
    reportWorkflowStatus = true
  }


}