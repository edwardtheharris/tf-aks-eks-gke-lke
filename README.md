---
abstract: A simple deployment of k8s clusters to various cloud providers.
authors: Xander Harris
date: 2024-03-04
title: Terraform AKS / EKS / GKE / LKE
---

## AKS

[Azure Kubernetes Service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster)

A stub of this code has been added to the {file}`aks` folder.

## EKS

A stub of this code has been added to the {file}`eks` folder.

[Elastic Kubernetes Service](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)

## GKE

[Google Kubernetes Engine](https://registry.terraform.io/modules/terraform-google-modules/kubernetes-engine/google/latest)

## LKE

[Linode Kubernetes Engine](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/lke_cluster)

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- aws (5.42.0)

- azurerm (3.97.1)

- google (5.22.0)

## Providers

No providers.

## Modules

The following Modules are called:

### aks

Source: ./aks

Version:

### eks

Source: ./eks

Version:

### gke

Source: ./gke

Version:

## Resources

No resources.

## Required Inputs

The following input variables are required:

### sp\_client\_id

Description: n/a

Type: `string`

### sp\_client\_secret

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### AWS\_ACCESS\_KEY\_ID

Description: Access key ID

Type: `string`

Default: `""`

### AWS\_SECRET\_ACCESS\_KEY

Description: AWS secret access key

Type: `string`

Default: `""`

### aws\_region

Description: The region in which the EKS cluster will be deployed.

Type: `string`

Default: `"us-west-2"`

### project\_id

Description: Goole Cloud project ID

Type: `string`

Default: `""`

### region

Description: Google Cloud region

Type: `string`

Default: `""`

## Outputs

No outputs.
<!-- END_TF_DOCS -->