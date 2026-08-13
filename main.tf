resource "aws_workspaces_pool" "workspaces_pools" {
  for_each = var.workspaces_pools

  bundle_id    = each.value.bundle_id
  description  = each.value.description
  directory_id = each.value.directory_id
  pool_name    = each.value.pool_name
  running_mode = each.value.running_mode
  region       = each.value.region
  tags         = each.value.tags

  dynamic "application_settings" {
    for_each = each.value.application_settings != null ? each.value.application_settings : []
    content {
      settings_group = application_settings.value.settings_group
      status         = application_settings.value.status
    }
  }

  dynamic "capacity" {
    for_each = each.value.capacity != null ? each.value.capacity : []
    content {
      desired_user_sessions = capacity.value.desired_user_sessions
    }
  }

  dynamic "timeout_settings" {
    for_each = each.value.timeout_settings != null ? each.value.timeout_settings : []
    content {
      disconnect_timeout_in_seconds      = timeout_settings.value.disconnect_timeout_in_seconds
      idle_disconnect_timeout_in_seconds = timeout_settings.value.idle_disconnect_timeout_in_seconds
      max_user_duration_in_seconds       = timeout_settings.value.max_user_duration_in_seconds
    }
  }
}

