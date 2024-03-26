variable "aks_cluster_name" {
  type    = string
  default = "tf-aks"
}

variable "location" {
  type    = string
  default = "West US 3"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "resource_group_name" {
  type    = string
  default = "tf-aks-gh"
}

variable "sp_client_id" {
  default = ""
  type    = string
}

variable "sp_client_secret" {
  default = ""
  type    = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}
