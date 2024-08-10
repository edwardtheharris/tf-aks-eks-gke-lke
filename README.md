---
abstract: A simple deployment of k8s clusters to various cloud providers.
authors: Xander Harris
date: 2024-03-04
title: Terraform AKS / EKS / GKE / LKE
---

## AKS

[Azure Kubernetes Service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster)

A stub of this code has been added to the {file}`aks` folder.

You've got to set environment variables in TFC as described in
[this](https://stackoverflow.com/questions/72681536/azure-cli-path-error-running-in-terraform-cloud)
very helpful StackOverflow post.

```shell
ARM_CLIENT_ID=APPID
ARM_CLIENT_SECRET=APP_PASSWORD
ARM_SUBSCRIPTION_ID=SUB_ID
ARM_TENANT_ID=TENANT_ID
```

More information is available
[here](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build#set-your-environment-variables).

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

### sp_client_id

Description: n/a

Type: `string`

### sp_client_secret

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### AWS_ACCESS_KEY_ID

Description: Access key ID

Type: `string`

Default: `""`

### AWS_SECRET_ACCESS_KEY

Description: AWS secret access key

Type: `string`

Default: `""`

### aws_region

Description: The region in which the EKS cluster will be deployed.

Type: `string`

Default: `"us-west-2"`

### cf_member

Description: Cloud Function invoker

Type: `string`

Default: `""`

### project_id

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
