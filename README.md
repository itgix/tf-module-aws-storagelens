The Terraform module is used by the ITGix AWS Landing Zone - https://itgix.com/itgix-landing-zone/

# AWS S3 Storage Lens Terraform Module

This module creates an Amazon S3 Storage Lens dashboard with configurable metrics, prefix-level aggregation, and optional data export.

Part of the [ITGix AWS Landing Zone](https://itgix.com/itgix-landing-zone/).

## Resources Created

- S3 Storage Lens configuration/dashboard
- *(Optional)* Metrics export to S3

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| `storage_lens_dashboard_name` | Name of the dashboard | `string` | `""` | no |
| `storage_lens_dashboard_create` | Whether to create the dashboard | `bool` | `false` | no |
| `activity_metrics_enabled` | Enable activity metrics (advanced) | `bool` | `false` | no |
| `advanced_cost_optimization_metrics_enabled` | Enable advanced cost optimization metrics | `bool` | `false` | no |
| `advanced_data_protection_metrics_enabled` | Enable advanced data protection metrics | `bool` | `false` | no |
| `detailed_status_code_metrics_enabled` | Enable detailed status code metrics | `bool` | `false` | no |
| `prefix_level_enabled` | Enable prefix-level aggregation | `bool` | `false` | no |
| `max_depth` | Number of prefix levels for detail metrics | `number` | `1` | no |
| `min_storage_bytes_percentage` | Minimum storage percentage threshold for prefix recording | `number` | `1` | no |
| `data_export_enabled` | Enable metrics export | `bool` | `false` | no |
| `data_export_account_id` | Account ID for exported data storage | `number` | `905418054535` | no |
| `data_export_s3_bucket_destination_arn` | S3 bucket ARN for exported data | `string` | `""` | no |
| `data_export_s3_bucket_encryption_key_id` | KMS key ID for export encryption | `string` | `null` | no |
| `data_export_s3_bucket_encryption_sses3` | Use SSE-S3 encryption for export | `bool` | `false` | no |
| `exclude_buckets` | Buckets to exclude from the dashboard | `list` | `[]` | no |
| `exclude_regions` | Regions to exclude from the dashboard | `list` | `[]` | no |
| `include_buckets` | Buckets to include in the dashboard | `list` | `[]` | no |
| `include_regions` | Regions to include in the dashboard | `list` | `[]` | no |

## Usage Example

```hcl
module "storage_lens" {
  source = "path/to/tf-module-aws-storagelens"

  storage_lens_dashboard_name   = "my-org-dashboard"
  storage_lens_dashboard_create = true
  activity_metrics_enabled      = true

  exclude_regions = ["us-west-1", "ap-southeast-1"]
}
```
