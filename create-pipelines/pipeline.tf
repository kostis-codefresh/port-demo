resource "codefresh_project" "example-project" {
  name = "port-demo"

  tags = [
    "port",
    "webinar",
    "terraform-gen"
  ]
}

resource "codefresh_pipeline" "example-pipeline" {



  name = "${codefresh_project.example-project.name}/build-${github_repository.my-new-demo-repo.name}"

  tags = [
    "port",
    "docker",
    "terraform-gen"
  ]

  spec {


    spec_template {
      repo     = "kostis-codefresh/${github_repository.my-new-demo-repo.name}"
      path     = "./codefresh.yml"
      revision = "main"
      context  = "github-1"
    }

    contexts = [
      "port_credentials",

    ]

    trigger {
      branch_regex = "/.*/gi"
      context      = "github-1"
      description  = "Trigger for commits"
      disabled     = false
      events = [
        "push.heads"
      ]
      modified_files_glob = ""
      name                = "commits"
      repo                = "kostis-codefresh/${github_repository.my-new-demo-repo.name}"
      type                = "git"
    }




  }
}