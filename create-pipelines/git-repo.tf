resource "github_repository" "my-new-demo-repo" {
  name        = var.my_app_name
  description = "Test repo from Terraform for Port webinar"
  visibility  = "public"
  template {
    owner      = "kostis-codefresh"
    repository = "port-demo-microservice-skeleton"
  }
}