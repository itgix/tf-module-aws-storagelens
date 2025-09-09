The Terraform module is used by the ITGix AWS Landing Zone - https://itgix.com/itgix-landing-zone/

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3control_storage_lens_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_storage_lens_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activity_metrics_enabled"></a> [activity\_metrics\_enabled](#input\_activity\_metrics\_enabled) | Controls if the activity metrics will be enabled (they're part of the advanced metrics option). | `bool` | `false` | no |
| <a name="input_advanced_cost_optimization_metrics_enabled"></a> [advanced\_cost\_optimization\_metrics\_enabled](#input\_advanced\_cost\_optimization\_metrics\_enabled) | Controls if the advanced cost optimization metrics will be enabled (they're part of the advanced metrics option). | `bool` | `false` | no |
| <a name="input_advanced_data_protection_metrics_enabled"></a> [advanced\_data\_protection\_metrics\_enabled](#input\_advanced\_data\_protection\_metrics\_enabled) | Controls if the advanced data protection metrics will be enabled (they're part of the advanced metrics option). | `bool` | `false` | no |
| <a name="input_data_export_account_id"></a> [data\_export\_account\_id](#input\_data\_export\_account\_id) | Specifies the account in which it would store the exported data. | `number` | `905418054535` | no |
| <a name="input_data_export_enabled"></a> [data\_export\_enabled](#input\_data\_export\_enabled) | Controls if metrics export should be enabled. | `bool` | `false` | no |
| <a name="input_data_export_s3_bucket_destination_arn"></a> [data\_export\_s3\_bucket\_destination\_arn](#input\_data\_export\_s3\_bucket\_destination\_arn) | Specifies the bucket in which it would store the exported data. | `string` | `""` | no |
| <a name="input_data_export_s3_bucket_encryption_key_id"></a> [data\_export\_s3\_bucket\_encryption\_key\_id](#input\_data\_export\_s3\_bucket\_encryption\_key\_id) | Specifies the KMS ID that it would use to encrypt the data. | `any` | `null` | no |
| <a name="input_data_export_s3_bucket_encryption_sses3"></a> [data\_export\_s3\_bucket\_encryption\_sses3](#input\_data\_export\_s3\_bucket\_encryption\_sses3) | Controls if the encryption that it would be used is sses3. | `bool` | `false` | no |
| <a name="input_detailed_status_code_metrics_enabled"></a> [detailed\_status\_code\_metrics\_enabled](#input\_detailed\_status\_code\_metrics\_enabled) | Controls if the detailed status code metrics will be enabled (they're part of the advanced metrics option). | `bool` | `false` | no |
| <a name="input_exclude_buckets"></a> [exclude\_buckets](#input\_exclude\_buckets) | The buckets that would be excluded from the dashboard (you can either specify include or exclude only). | `list` | `[]` | no |
| <a name="input_exclude_regions"></a> [exclude\_regions](#input\_exclude\_regions) | The regions that would be excluded from the dashboard (you can either specify include or exclude only). | `list` | `[]` | no |
| <a name="input_include_buckets"></a> [include\_buckets](#input\_include\_buckets) | The buckets that would be included from the dashboard (you can either specify include or exclude only). | `list` | `[]` | no |
| <a name="input_include_regions"></a> [include\_regions](#input\_include\_regions) | The regions that would be included from the dashboard (you can either specify include or exclude only). | `list` | `[]` | no |
| <a name="input_max_depth"></a> [max\_depth](#input\_max\_depth) | Specify the number of levels within each prefix for which prefix detail metrics will be generated. | `number` | `1` | no |
| <a name="input_min_storage_bytes_percentage"></a> [min\_storage\_bytes\_percentage](#input\_min\_storage\_bytes\_percentage) | Specify the minimum size threshold for your prefix as a percentage of your overall bucket storage that this configuration will record. (For example, a 1% threshold means that only prefixes that make up 1% or more of the total storage in the bucket are recorded). | `number` | `1` | no |
| <a name="input_prefix_level_enabled"></a> [prefix\_level\_enabled](#input\_prefix\_level\_enabled) | Controls if the prefix aggregation will be enabled. | `bool` | `false` | no |
| <a name="input_storage_lens_dashboard_create"></a> [storage\_lens\_dashboard\_create](#input\_storage\_lens\_dashboard\_create) | Controls if Dashboard should be created. | `bool` | `false` | no |
| <a name="input_storage_lens_dashboard_name"></a> [storage\_lens\_dashboard\_name](#input\_storage\_lens\_dashboard\_name) | The name of the dashboard that will be created. | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
