---
abstract: A simple deployment of k8s clusters to various cloud providers.
authors: Xander Harris
date: 2024-03-26
title: Terraform GKE
---

## Google Kubernetes Engine

Requires some configuration.

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- google (5.22.0)

## Providers

The following providers are used by this module:

- google (5.22.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [google_cloud_run_v2_job.hello](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/cloud_run_v2_job) (resource)
- [google_cloudfunctions_function.hello-world](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/cloudfunctions_function) (resource)
- [google_cloudfunctions_function_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/cloudfunctions_function_iam_member) (resource)
- [google_container_cluster.primary](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/container_cluster) (resource)
- [google_container_node_pool.primary_preemptible_nodes](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/container_node_pool) (resource)
- [google_service_account.k8s](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/service_account) (resource)
- [google_storage_bucket.remote-dev](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/storage_bucket) (resource)
- [google_storage_bucket_object.archive](https://registry.terraform.io/providers/hashicorp/google/5.22.0/docs/resources/storage_bucket_object) (resource)

## Required Inputs

No required inputs.

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

### cf_member

Description: Function executor

Type: `string`

Default: `""`

### project_id

Description: Google Cloud Project ID

Type: `string`

Default: `""`

### region

Description: Google Cloud Region

Type: `string`

Default: `"us-central1"`

### sp_client_id

Description: n/a

Type: `string`

Default: `""`

### sp_client_secret

Description: n/a

Type: `string`

Default: `""`

## Outputs

The following outputs are exported:

### run_out

Description: n/a
<!-- END_TF_DOCS -->
