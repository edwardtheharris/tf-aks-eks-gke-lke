---
abstract: A simple deployment of k8s clusters to various cloud providers.
authors: Xander Harris
date: 2024-03-26
title: Terraform EKS
---

## Elastic Kubernetes Service

Requires some configuration.

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- aws (>= 5.42.0)

## Providers

The following providers are used by this module:

- aws (5.39.1)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_eks_cluster.k8s](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) (resource)
- [aws_iam_role.k8s](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) (resource)
- [aws_iam_role_policy_attachment.k8s-AmazonEKSClusterPolicy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) (resource)
- [aws_iam_role_policy_attachment.k8s-AmazonEKSVPCResourceController](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) (resource)
- [aws_subnet.k8s01](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) (resource)
- [aws_subnet.k8s02](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) (resource)
- [aws_vpc.k8s](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) (resource)
- [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) (data source)

## Required Inputs

No required inputs.

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

### member

Description: n/a

Type: `string`

Default: `""`

## Outputs

The following outputs are exported:

### endpoint

Description: n/a

### kubeconfig-certificate-authority-data

Description: n/a
<!-- END_TF_DOCS -->
