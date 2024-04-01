terraform {
  backend "local" {}
  required_providers {
    ec = {
      source = "elastic/ec"
      version = "0.9.0"
    }
    elasticstack = {
      source = "elastic/elasticstack"
      version = "0.11.2"
    }
  }
}
