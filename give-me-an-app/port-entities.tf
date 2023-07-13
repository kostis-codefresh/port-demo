resource "port_entity" "prod" {
  identifier = "prod"
  title      = "Production"
  blueprint  = "environment"

  properties = {
    "string_props" = {
      "environmentName" = "Production"
      "region"          = "Europe"
      "location"        = "prod.port.sales-dev.codefresh.io"
      "grafana"         = "https://grafana.com/orgs/kostis"
      "version"         = helm_release.target_vcluster_prod.version
    }

  }

}

resource "port_entity" "qa" {
  identifier = "qa"
  title      = "QA"
  blueprint  = "environment"


  properties = {
    "string_props" = {
      "environmentName" = "QA"
      "region"          = "Asia"
      "location"        = "qa.port.sales-dev.codefresh.io"
      "grafana"         = "https://grafana.com/orgs/kostis"
      "version"         = helm_release.target_vcluster_qa.version
    }

  }

}

resource "port_entity" "staging" {
  identifier = "staging"
  title      = "Staging"
  blueprint  = "environment"

  properties = {
    "string_props" = {
      "environmentName" = "Staging"
      "region"          = "USA"
      "location"        = "staging.port.sales-dev.codefresh.io"
      "grafana"         = "https://grafana.com/orgs/kostis"
      "version"         = helm_release.target_vcluster_staging.version
    }

  }

}