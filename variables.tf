variable "storage_lens_dashboard_name" {
  description = "The name of the dashboard that will be created."
  default     = ""
}

variable "storage_lens_dashboard_create" {
  description = "Controls if Dashboard should be created."
  default     = false
}

variable "activity_metrics_enabled" {
  description = "Controls if the activity metrics will be enabled (they're part of the advanced metrics option)."
  default     = false
}

variable "advanced_cost_optimization_metrics_enabled" {
  description = "Controls if the advanced cost optimization metrics will be enabled (they're part of the advanced metrics option)."
  default     = false
}

variable "advanced_data_protection_metrics_enabled" {
  description = "Controls if the advanced data protection metrics will be enabled (they're part of the advanced metrics option)."
  default     = false
}

variable "detailed_status_code_metrics_enabled" {
  description = "Controls if the detailed status code metrics will be enabled (they're part of the advanced metrics option)."
  default     = false
}

variable "prefix_level_enabled" {
  description = "Controls if the prefix aggregation will be enabled."
  default     = false
}

variable "max_depth" {
  description = "Specify the number of levels within each prefix for which prefix detail metrics will be generated."
  default     = 1
}

variable "min_storage_bytes_percentage" {
  description = "Specify the minimum size threshold for your prefix as a percentage of your overall bucket storage that this configuration will record. (For example, a 1% threshold means that only prefixes that make up 1% or more of the total storage in the bucket are recorded)."
  default     = 1
}

variable "data_export_enabled" {
  description = "Controls if metrics export should be enabled."
  default     = false
}

variable "data_export_account_id" {
  description = "Specifies the account in which it would store the exported data."
  default     = 905418054535
}

variable "data_export_s3_bucket_destination_arn" {
  description = "Specifies the bucket in which it would store the exported data."
  default     = ""
}

variable "data_export_s3_bucket_encryption_key_id" {
  description = "Specifies the KMS ID that it would use to encrypt the data."
  default     = null
}

variable "data_export_s3_bucket_encryption_sses3" {
  description = "Controls if the encryption that it would be used is sses3."
  default     = false
}

variable "exclude_buckets" {
  description = "The buckets that would be excluded from the dashboard (you can either specify include or exclude only)."
  default     = []
}

variable "exclude_regions" {
  description = "The regions that would be excluded from the dashboard (you can either specify include or exclude only)."
  default     = []
}

variable "include_buckets" {
  description = "The buckets that would be included from the dashboard (you can either specify include or exclude only)."
  default     = []
}

variable "include_regions" {
  description = "The regions that would be included from the dashboard (you can either specify include or exclude only)."
  default     = []
}