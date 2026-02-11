variable "eventgrid_namespaces" {
  description = <<EOT
Map of eventgrid_namespaces, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - capacity
    - public_network_access
    - sku
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - inbound_ip_rule (block):
        - action (optional)
        - ip_mask (required)
    - topic_spaces_configuration (block):
        - alternative_authentication_name_source (optional)
        - dynamic_routing_enrichment (optional, block):
            - key (required)
            - value (required)
        - maximum_client_sessions_per_authentication_name (optional)
        - maximum_session_expiry_in_hours (optional)
        - route_topic_id (optional)
        - static_routing_enrichment (optional, block):
            - key (required)
            - value (required)
EOT

  type = map(object({
    location              = string
    name                  = string
    resource_group_name   = string
    capacity              = optional(number) # Default: 1
    public_network_access = optional(string) # Default: "Enabled"
    sku                   = optional(string) # Default: "Standard"
    tags                  = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    inbound_ip_rule = optional(list(object({
      action  = optional(string) # Default: "Allow"
      ip_mask = string
    })))
    topic_spaces_configuration = optional(object({
      alternative_authentication_name_source = optional(list(string))
      dynamic_routing_enrichment = optional(object({
        key   = string
        value = string
      }))
      maximum_client_sessions_per_authentication_name = optional(number) # Default: 1
      maximum_session_expiry_in_hours                 = optional(number) # Default: 1
      route_topic_id                                  = optional(string)
      static_routing_enrichment = optional(object({
        key   = string
        value = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_namespaces : (
        v.inbound_ip_rule == null || (length(v.inbound_ip_rule) <= 128)
      )
    ])
    error_message = "Each inbound_ip_rule list must contain at most 128 items"
  }
}

