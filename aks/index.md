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

- [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest) (3.97.1)

## Providers

The following providers are used by this module:

- [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest) (3.94.0)

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

### <a name="input_aks_cluster_name"></a> [aks\_cluster\_name](#input\_aks\_cluster\_name)

Description: n/a

Type: `string`

Default: `"tf-aks"`

### <a name="input_location"></a> [location](#input\_location)

Description: n/a

Type: `string`

Default: `"West US 3"`

### <a name="input_node_count"></a> [node\_count](#input\_node\_count)

Description: n/a

Type: `number`

Default: `1`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: n/a

Type: `string`

Default: `"tf-aks-gh"`

### <a name="input_sp_client_id"></a> [sp\_client\_id](#input\_sp\_client\_id)

Description: n/a

Type: `string`

Default: `""`

### <a name="input_sp_client_secret"></a> [sp\_client\_secret](#input\_sp\_client\_secret)

Description: n/a

Type: `string`

Default: `""`

### <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size)

Description: n/a

Type: `string`

Default: `"Standard_B2s"`

## Outputs

No outputs.
<!-- END_TF_DOCS -->
