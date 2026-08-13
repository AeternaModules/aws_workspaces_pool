output "workspaces_pools_id" {
  description = "Map of id values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspaces_pools_application_settings" {
  description = "Map of application_settings values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.application_settings if v.application_settings != null && length(v.application_settings) > 0 }
}
output "workspaces_pools_bundle_id" {
  description = "Map of bundle_id values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.bundle_id if v.bundle_id != null && length(v.bundle_id) > 0 }
}
output "workspaces_pools_capacity" {
  description = "Map of capacity values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.capacity if v.capacity != null && length(v.capacity) > 0 }
}
output "workspaces_pools_capacity_status" {
  description = "Map of capacity_status values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.capacity_status if v.capacity_status != null && length(v.capacity_status) > 0 }
}
output "workspaces_pools_created_at" {
  description = "Map of created_at values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "workspaces_pools_description" {
  description = "Map of description values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workspaces_pools_directory_id" {
  description = "Map of directory_id values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "workspaces_pools_pool_arn" {
  description = "Map of pool_arn values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.pool_arn if v.pool_arn != null && length(v.pool_arn) > 0 }
}
output "workspaces_pools_pool_id" {
  description = "Map of pool_id values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.pool_id if v.pool_id != null && length(v.pool_id) > 0 }
}
output "workspaces_pools_pool_name" {
  description = "Map of pool_name values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.pool_name if v.pool_name != null && length(v.pool_name) > 0 }
}
output "workspaces_pools_region" {
  description = "Map of region values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.region if v.region != null && length(v.region) > 0 }
}
output "workspaces_pools_running_mode" {
  description = "Map of running_mode values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.running_mode if v.running_mode != null && length(v.running_mode) > 0 }
}
output "workspaces_pools_s3_bucket_name" {
  description = "Map of s3_bucket_name values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.s3_bucket_name if v.s3_bucket_name != null && length(v.s3_bucket_name) > 0 }
}
output "workspaces_pools_state" {
  description = "Map of state values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "workspaces_pools_tags" {
  description = "Map of tags values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workspaces_pools_tags_all" {
  description = "Map of tags_all values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "workspaces_pools_timeout_settings" {
  description = "Map of timeout_settings values across all workspaces_pools, keyed the same as var.workspaces_pools"
  value       = { for k, v in aws_workspaces_pool.workspaces_pools : k => v.timeout_settings if v.timeout_settings != null && length(v.timeout_settings) > 0 }
}

