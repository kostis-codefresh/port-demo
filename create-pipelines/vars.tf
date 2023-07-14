variable "api_url" {
  type        = string
  default     = "http://g.codefresh.io/api"
  description = "Codefresh URL access. SAAS is at http://g.codefresh.io/api"
}

variable "cf_token" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Codefresh access token. Create it from the Codefresh UI"
}

variable "gh_token" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Github token. Create it from the github UI"
}

variable "my_app_name" {
  type        = string
  default     = "my-port-app"
  sensitive   = false
  description = "Name of application to be created. Affects Git repo and pipeline names"
}

variable "port_client_id" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Port Client ID. Get it from port UI"
}

variable "port_secret" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Port Secret. Get it from port UI"
}