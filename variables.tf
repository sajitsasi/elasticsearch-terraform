variable "ec_api_key" {
  description = "API Key for Elastic Cloud authentication"
  type        = string
}

variable "deployment_template_id" {
  description = "Deployment Template ID"
  type        = string
  default     = "azure-cpu-optimized"
}

variable "elasticsearch_hot_size" {
  description = "Memory size for hot Elasticsearch nodes"
  type        = string
  default     = "8g"
}

variable "elasticsearch_cold_size" {
  description = "Memory size for cold Elasticsearch nodes"
  type        = string
  default     = "4g"
}

variable "elasticsearch_frozen_size" {
  description = "Memory size for frozen Elasticsearch nodes"
  type        = string
  default     = "2g"
}

variable "kibana_size" {
  description = "Memory size for Kibana node"
  type        = string
  default     = "4g"
}

variable "region" {
  description = "Region for the deployment"
  type        = string
  default     = "azure-eastus2"
}