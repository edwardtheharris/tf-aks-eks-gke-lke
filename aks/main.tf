terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
  cloud {
    organization = "remote-docker-workspace"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["kubernetes", "aks"]
    }
  }
}

/**
  * This is only required when the User, Service Principal, or Identity
  * running Terraform lacks the permissions to register Azure Resource
  * Providers.
  */
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "aks_rg" {
  name     = var.azResourceGroupName
  location = var.azLocation
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.azAksClusterName
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = var.azAksClusterName

  default_node_pool {
    name       = "default"
    node_count = var.azNodeCount
    vm_size    = var.azVmSize
  }

  service_principal {
    client_id     = var.azAppId
    client_secret = var.azPassword
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "dev"
  }
}
