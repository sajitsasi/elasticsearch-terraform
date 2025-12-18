terraform {
  backend "local" {}
  required_providers {
    ec = {
      source = "elastic/ec"
      version = "~> 0.12.0"
    }
    elasticstack = {
      source = "elastic/elasticstack"
      version = "~> 0.13.0"
    }
  }
}
