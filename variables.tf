variable "kibana_agentbuilder_tools" {
  description = <<EOT
Map of kibana_agentbuilder_tools, attributes below
Required:
    - configuration
    - tool_id
    - type
Optional:
    - description
    - space_id
    - tags
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    configuration = string
    tool_id       = string
    type          = string
    description   = optional(string)
    space_id      = optional(string)
    tags          = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

