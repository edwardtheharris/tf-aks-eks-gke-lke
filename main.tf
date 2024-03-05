terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

module "aks" {
  source = "./aks-module"

  resource_group_name = "your-rg-name"
  aks_cluster_name    = "your-aks-cluster-name"
  location            = "East US"
  node_count          = 1
  vm_size             = "Standard_B2s"
}
