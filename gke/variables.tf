variable "gcp_credentials" {
  description = "Path to a GCP creds file."
  sensitive  = true
  type        = string
}

variable "AWS_ACCESS_KEY_ID" {
  default     = ""
  description = "Access key ID"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  default     = ""
  description = "AWS secret access key"
}

variable "project_id" {
  default     = ""
  description = "Google Cloud Project ID"
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