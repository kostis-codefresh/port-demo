resource "port-labs_entity" "prod" {
  identifier = "prod"
  title      = "Production"
  blueprint  = "environment"


  properties {
    name  = "environmentName"
    value = "Production"
  }
  properties {
    name  = "region"
    value = "Europe"
  }
  properties {
    name  = "location"
    value = "prod.port.sales-dev.codefresh.io"
  }
  properties {
    name  = "grafana"
    value = "https://grafana.com/orgs/kostis"
  }

  properties {
    name  = "version"
    value = helm_release.target_vcluster_prod.version
  }

}

resource "port-labs_entity" "qa" {
  identifier = "qa"
  title      = "QA"
  blueprint  = "environment"


  properties {
    name  = "environmentName"
    value = "QA"
  }
  properties {
    name  = "region"
    value = "Asia"
  }
  properties {
    name  = "location"
    value = "qa.port.sales-dev.codefresh.io"
  }
  properties {
    name  = "grafana"
    value = "https://grafana.com/orgs/kostis"
  }

  properties {
    name  = "version"
    value = helm_release.target_vcluster_qa.version
  }

}

resource "port-labs_entity" "staging" {
  identifier = "staging"
  title      = "Staging"
  blueprint  = "environment"


  properties {
    name  = "environmentName"
    value = "Staging"
  }
  properties {
    name  = "region"
    value = "USA"
  }
  properties {
    name  = "location"
    value = "staging.port.sales-dev.codefresh.io"
  }
  properties {
    name  = "grafana"
    value = "https://grafana.com/orgs/kostis"
  }

  properties {
    name  = "version"
    value = helm_release.target_vcluster_staging.version
  }

}