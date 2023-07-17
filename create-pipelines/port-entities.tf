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
  blueprint         = "microservice"
  trigger           = "DAY-2"
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

resource "port_entity" "apache_commons" {
  identifier = "apache-commons-io"
  title      = "Apache Commons IO"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "Apache Commons IO"
      "libraryVersion" = "2.13"
      "git"            = "https://github.com/apache/commons-io"
      "website"        = "https://commons.apache.org/proper/commons-io/"
      "description"    = "Library of utilities to assist with developing IO functionality"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }


}

resource "port_entity" "mockito" {
  identifier = "mockito"
  title      = "Mockito"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "Mockito"
      "libraryVersion" = "5.4.0"
      "git"            = "https://github.com/mockito/mockito"
      "website"        = "https://site.mockito.org/"
      "description"    = "Tasty mocking framework for unit tests"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }


}

resource "port_entity" "hibernate" {
  identifier = "hibernate"
  title      = "Hibernate"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "Hibernate"
      "libraryVersion" = "6.2.6"
      "git"            = "https://github.com/hibernate/hibernate-orm"
      "website"        = "https://hibernate.org/"
      "description"    = "Java ORM"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }


}


resource "port_entity" "pdfbox" {
  identifier = "pdfbox"
  title      = "Apache PDFBox"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "Apache PDFBox"
      "libraryVersion" = "2.0.29"
      "git"            = "https://github.com/apache/pdfbox"
      "website"        = "https://pdfbox.apache.org/"
      "description"    = "Open source Java tool for working with PDF documents"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }

}

resource "port_entity" "sl4j" {
  identifier = "sl4j"
  title      = "SLF4J"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "SLF4J"
      "libraryVersion" = "2.0.7"
      "git"            = "https://github.com/qos-ch/slf4j"
      "website"        = "https://www.slf4j.org/"
      "description"    = "Simple Logging Facade for Java"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }

}

resource "port_entity" "spring" {
  identifier = "spring"
  title      = "Spring"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "Spring"
      "libraryVersion" = "6.0.11"
      "git"            = "https://github.com/spring-projects/spring-framework"
      "website"        = "https://spring.io/projects/spring-framework"
      "description"    = "Configuration model for modern Java-based enterprise applications"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }

}

resource "port_entity" "freemarker" {
  identifier = "freemarker"
  title      = "FreeMarker"
  blueprint  = "library"

  properties = {
    "string_props" = {
      "libraryName"    = "FreeMarker"
      "libraryVersion" = "2.3.32"
      "git"            = "https://github.com/apache/freemarker"
      "website"        = "https://freemarker.apache.org/"
      "description"    = "Apache FreeMarker™ is a template engine"
    }
  }

  relations = {
    single_relations = {
      "usedBy" = port_entity.my-new-app.identifier
    }
  }

}
