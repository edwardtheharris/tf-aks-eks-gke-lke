terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
  cloud {
    organization = "remote-docker-workspace"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["kubernetes"]
    }
  }
}

module "aks" {
  source = "./aks"

  resource_group_name = "your-rg-name"
  aks_cluster_name    = "your-aks-cluster-name"
  location            = "East US"
  node_count          = 1
  vm_size             = "Standard_B2s"
}
