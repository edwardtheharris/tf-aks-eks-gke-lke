terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.95.0"
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

  sp_client_id        = var.sp_client_id
  sp_client_secret    = var.sp_client_secret
  resource_group_name = "tf-aks-gh"
  aks_cluster_name    = "tf-aks"
  location            = "West US 3"
  node_count          = 1
  vm_size             = "Standard_B2s"
}
