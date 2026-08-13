variable "workspaces_pools" {
  description = <<EOT
Map of workspaces_pools, attributes below
Required:
    - bundle_id
    - description
    - directory_id
    - pool_name
    - running_mode
Optional:
    - region
    - tags
    - application_settings (block):
        - settings_group (optional)
        - status (optional)
    - capacity (block):
        - desired_user_sessions (required)
    - timeout_settings (block):
        - disconnect_timeout_in_seconds (optional)
        - idle_disconnect_timeout_in_seconds (optional)
        - max_user_duration_in_seconds (optional)
EOT

  type = map(object({
    bundle_id    = string
    description  = string
    directory_id = string
    pool_name    = string
    running_mode = string
    region       = optional(string)
    tags         = optional(map(string))
    application_settings = optional(list(object({
      settings_group = optional(string)
      status         = optional(string)
    })))
    capacity = optional(list(object({
      desired_user_sessions = number
    })))
    timeout_settings = optional(list(object({
      disconnect_timeout_in_seconds      = optional(number)
      idle_disconnect_timeout_in_seconds = optional(number)
      max_user_duration_in_seconds       = optional(number)
    })))
  }))
}

