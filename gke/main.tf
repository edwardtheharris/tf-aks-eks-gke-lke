terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.4.0"
    }
  }

  cloud {
    organization = "remote-docker-workspace"
    hostname     = "app.terraform.io"

    workspaces {
      tags = ["kubernetes", "gke"]
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region  = var.region
}

resource "google_service_account" "k8s" {
  account_id   = "kubernetes"
  display_name = "Kubernetes Service Account"
}

resource "google_container_cluster" "primary" {
  name     = "gke-central"
  location = "us-central1"

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes = true
    master_ipv4_cidr_block = "10.0.0.0/28"
  }
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "k8s01"
  location   = "us-central1"
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.k8s.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
