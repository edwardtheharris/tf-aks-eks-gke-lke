variable "AWS_ACCESS_KEY_ID" {
  default     = ""
  description = "Access key ID"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  default     = ""
  description = "AWS secret access key"
}

variable "cf_member" {
  default = ""
  description = "Function executor"
}

variable "project_id" {
  default     = ""
  description = "Google Cloud Project ID"
  type = string
}

variable "region" {
  default     = "us-central1"
  description = "Google Cloud Region"
}

variable "sp_client_secret" {
  default = ""
  type    = string
}

variable "sp_client_id" {
  default = ""
  type    = string
}
