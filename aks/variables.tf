variable "azAksClusterName" {
  type    = string
  default = "tf-aks"
}

variable "azAppId" {
  default     = ""
  description = "Azure Kubernetes Service Cluster service principal"
  type = string
}

variable "azLocation" {
  default     = "westus3"
  description = "Display name for deployment location"
  type        = string
}

variable "azNodeCount" {
  type    = number
  default = 1
}

variable "azPassword" {
  default     = ""
  description = "Azure Kubernetes Service Cluster password"
  type        = string
}

variable "azResourceGroupName" {
  default     = "tf-aks-gh"
  description = "Resource group name"
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
  description = "The tenant id for the service principal"
  type        = string
}

variable "azVmSize" {
  type    = string
  default = "Standard_B2s"
}
