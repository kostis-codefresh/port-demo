resource "port_entity" "my-new-app" {
  identifier = github_repository.my-new-demo-repo.full_name
  title      = "My New App"
  blueprint  = "microservice"

  properties = {
    "string_props" = {
      "serviceName" = github_repository.my-new-demo-repo.name
      "git"         = github_repository.my-new-demo-repo.html_url
      "description" = "A brand new microservice"
    }

  }

}

resource "port_action" "build_app" {
  title             = "Build Application"
  icon              = "Codefresh"
  identifier        = "build_deploy_qa"
  blueprint         = "deployment"
  trigger           = "CREATE"
  description       = "Build application and deploy to QA"
  required_approval = false

  github_method = {
    org                  = "kostis-codefresh"
    repo                 = "port-demo"
    workflow             = "initial-build-deploy.yml"
    omitPayload          = false
    omitUserInputs       = true
    reportWorkflowStatus = true
  }


}

