variable "os_management_hub_dynamic_set_update_packages_managements" {
  description = <<EOT
Map of os_management_hub_dynamic_set_update_packages_managements, attributes below
Required:
    - dynamic_set_id
Optional:
    - managed_instances
    - update_types
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    dynamic_set_id    = string
    managed_instances = optional(list(string))
    update_types      = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

