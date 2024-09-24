---
abstract: A simple deployment of k8s clusters to various cloud providers.
authors: Xander Harris
date: 2024-03-26
title: Terraform AKS
---

## Azure Kubernetes Service

Requires some configuration.

<!-- markdownlint-disable -->
<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- azurerm (3.97.1)

## Providers

The following providers are used by this module:

- azurerm (3.94.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_kubernetes_cluster.aks_cluster](https://registry.terraform.io/providers/hashicorp/azurerm/3.97.1/docs/resources/kubernetes_cluster) (resource)
- [azurerm_resource_group.aks_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.97.1/docs/resources/resource_group) (resource)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### aks_cluster_name

Description: n/a

Type: `string`

Default: `"tf-aks"`

### location

Description: n/a

Type: `string`

Default: `"West US 3"`

### member

Description: n/a

Type: `string`

Default: `""`

### node_count

Description: n/a

Type: `number`

Default: `1`

### resource_group_name

Description: n/a

Type: `string`

Default: `"tf-aks-gh"`

### sp_client_id

Description: n/a

Type: `string`

Default: `""`

### sp_client_secret

Description: n/a

Type: `string`

Default: `""`

### vm_size

Description: n/a

Type: `string`

Default: `"Standard_B2s"`

## Outputs

No outputs.
<!-- END_TF_DOCS -->
