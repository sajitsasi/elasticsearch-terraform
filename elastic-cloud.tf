provider "ec" {
  apikey = var.ec_api_key
}

data "ec_stack" "latest" {
  version_regex = "latest"
  region        = var.region
}


resource "ec_deployment" "ess_tf_deployment" {
  name                   = "ess-tf-deployment"
  region                 = data.ec_stack.latest.region
  version                = data.ec_stack.latest.version
  deployment_template_id = var.deployment_template_id

  elasticsearch = {
    hot = {
      autoscaling = {}
      size        = var.elasticsearch_hot_size
      zone_count  = 3
    }
    warm = {
      autoscaling = {}
    }
    cold = {
      autoscaling = {}
    }
    frozen = {
      autoscaling = {}
    }
  }

  kibana = {
    size       = var.kibana_size
    zone_count = 1
  }
  
}