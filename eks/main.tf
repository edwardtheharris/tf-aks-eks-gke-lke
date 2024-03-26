terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
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

provider "aws" {
  region = var.aws_region
}

# Create a VPC
resource "aws_vpc" "k8s" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "k8s01" {
  vpc_id     = aws_vpc.k8s.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "k8s01"
  }
}

resource "aws_subnet" "k8s02" {
  vpc_id     = aws_vpc.k8s.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "k8s02"
  }
}


resource "aws_eks_cluster" "k8s" {
  name     = "k8s"
  role_arn = aws_iam_role.k8s.arn

  vpc_config {
    subnet_ids = [aws_subnet.k8s01.id, aws_subnet.k8s02.id]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.k8s-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.k8s-AmazonEKSVPCResourceController,
  ]
}
