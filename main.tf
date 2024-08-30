terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
    google = {
      source  = "hashicorp/google"
      version = "6.0.0"
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

  azAppId             = var.azAppId
  azPassword          = var.azPassword
  azResourceGroupName = "tf-aks-gh"
  azAksClusterName    = "tf-aks"
  azLocation          = "westus3"
  azNodeCount         = 1
  azVmSize            = "Standard_B2s"
}

module "eks" {
  source = "./eks"
}

module "gke" {
  cf_member  = var.cf_member
  project_id = var.project_id
  region     = var.region
  source     = "./gke"
}
