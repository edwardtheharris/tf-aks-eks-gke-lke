variable "aws_region" {
  default     = "us-west-2"
  description = "The region in which the EKS cluster will be deployed."
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

variable "cf_member" {
  default     = ""
  description = "Cloud Function invoker"
}

variable "project_id" {
  default     = ""
  description = "Goole Cloud project ID"
}

variable "region" {
  default     = ""
  description = "Google Cloud region"
}

variable "azAppId" {
  default     = ""
  description = "Azure SP ID"
  type        = string
}

variable "azPassword" {
  default     = ""
  description = "Azure SP Password"
  type        = string
}

variable "azSpDisplayName" {
  default     = "tf-aks-gh"
  description = "Service principal display name"
  type        = string
}

variable "azSubscriptionId" {
  default     = ""
  description = "Azure Subscription ID"
  type        = string
}
variable "azTenant" {
  default     = ""
  description = "Azure Tenant"
  type        = string
}
