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

- [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) (5.39.1)

## Providers

The following providers are used by this module:

- [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) (5.39.1)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_eks_cluster.k8s](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/eks_cluster) (resource)
- [aws_iam_role.k8s](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/iam_role) (resource)
- [aws_iam_role_policy_attachment.k8s-AmazonEKSClusterPolicy](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/iam_role_policy_attachment) (resource)
- [aws_iam_role_policy_attachment.k8s-AmazonEKSVPCResourceController](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/iam_role_policy_attachment) (resource)
- [aws_subnet.k8s01](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/subnet) (resource)
- [aws_subnet.k8s02](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/subnet) (resource)
- [aws_vpc.k8s](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/vpc) (resource)
- [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/data-sources/iam_policy_document) (data source)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

<!-- markdownlint-disable -->

### <a name="input_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#input\_AWS\_ACCESS\_KEY\_ID)

Description: Access key ID

Type: `string`

Default: `""`

### <a name="input_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#input\_AWS\_SECRET\_ACCESS\_KEY)

Description: AWS secret access key

Type: `string`

Default: `""`

### <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region)

Description: The region in which the EKS cluster will be deployed.

Type: `string`

Default: `"us-west-2"`

## Outputs

The following outputs are exported:

### <a name="output_endpoint"></a> [endpoint](#output\_endpoint)

Description: n/a

### <a name="output_kubeconfig-certificate-authority-data"></a> [kubeconfig-certificate-authority-data](#output\_kubeconfig-certificate-authority-data)

Description: n/a
<!-- END_TF_DOCS -->
