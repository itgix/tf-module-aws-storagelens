resource "aws_s3control_storage_lens_configuration" "this" {
  count     = var.storage_lens_dashboard_create ? 1 : 0
  config_id = var.storage_lens_dashboard_name

  storage_lens_configuration {
    enabled = var.storage_lens_dashboard_create

    account_level {
      dynamic "activity_metrics" {
        for_each = var.activity_metrics_enabled ? [1] : []
        content {
          enabled = true
        }
      }

      dynamic "advanced_cost_optimization_metrics" {
        for_each = var.advanced_cost_optimization_metrics_enabled ? [1] : []
        content {
          enabled = true
        }
      }

      dynamic "advanced_data_protection_metrics" {
        for_each = var.advanced_data_protection_metrics_enabled ? [1] : []
        content {
          enabled = true
        }
      }

      dynamic "detailed_status_code_metrics" {
        for_each = var.advanced_data_protection_metrics_enabled ? [1] : []
        content {
          enabled = true
        }
      }

      bucket_level {
        dynamic "activity_metrics" {
          for_each = var.activity_metrics_enabled ? [1] : []
          content {
            enabled = true
          }
        }

        dynamic "advanced_cost_optimization_metrics" {
          for_each = var.advanced_cost_optimization_metrics_enabled ? [1] : []
          content {
            enabled = true
          }
        }

        dynamic "advanced_data_protection_metrics" {
          for_each = var.advanced_data_protection_metrics_enabled ? [1] : []
          content {
            enabled = true
          }
        }

        dynamic "detailed_status_code_metrics" {
          for_each = var.advanced_data_protection_metrics_enabled ? [1] : []
          content {
            enabled = true
          }
        }

        dynamic "prefix_level" {
          for_each = var.prefix_level_enabled ? [1] : []
          content {
            storage_metrics {
              enabled = true
              selection_criteria {
                delimiter                    = "/"
                max_depth                    = coalesce(var.max_depth, 1)
                min_storage_bytes_percentage = coalesce(var.min_storage_bytes_percentage, 1)
              }
            }
          }
        }
      }
    }

    dynamic "data_export" {
      for_each = var.data_export_enabled ? [1] : []
      content {
        cloud_watch_metrics {
          enabled = true
        }

        dynamic "s3_bucket_destination" {
          for_each = var.data_export_enabled ? [1] : []
          content {
            account_id            = var.data_export_enabled ? var.data_export_account_id : 905418054535
            arn                   = var.data_export_enabled ? var.data_export_s3_bucket_destination_arn : ""
            format                = "CSV"
            output_schema_version = "V_1"
            prefix                = ""

            dynamic "encryption" {
              for_each = var.data_export_enabled && var.data_export_s3_bucket_encryption_key_id != null ? [1] : []
              content {
                sse_kms {
                  key_id = var.data_export_s3_bucket_encryption_key_id
                }
              }
            }

            dynamic "encryption" {
              for_each = var.data_export_enabled && var.data_export_s3_bucket_encryption_sses3 ? [1] : []
              content {
                sse_s3 {}
              }
            }
          }
        }
      }
    }

    dynamic "exclude" {
      for_each = var.exclude_buckets != null || var.exclude_regions != null ? [1] : []
      content {
        buckets = var.exclude_buckets != null ? var.exclude_buckets : []
        regions = var.exclude_regions != null ? var.exclude_regions : []
      }
    }

    dynamic "include" {
      for_each = var.include_buckets != null || var.include_regions != null ? [1] : []
      content {
        buckets = var.include_buckets != null ? var.include_buckets : []
        regions = var.include_regions != null ? var.include_regions : []
      }
    }
  }
}
