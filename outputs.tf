output "eventgrid_namespaces_id" {
  description = "Map of id values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventgrid_namespaces_capacity" {
  description = "Map of capacity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.capacity if v.capacity != null }
}
output "eventgrid_namespaces_identity" {
  description = "Map of identity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "eventgrid_namespaces_inbound_ip_rule" {
  description = "Map of inbound_ip_rule values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.inbound_ip_rule if v.inbound_ip_rule != null && length(v.inbound_ip_rule) > 0 }
}
output "eventgrid_namespaces_location" {
  description = "Map of location values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "eventgrid_namespaces_name" {
  description = "Map of name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventgrid_namespaces_public_network_access" {
  description = "Map of public_network_access values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.public_network_access if v.public_network_access != null && length(v.public_network_access) > 0 }
}
output "eventgrid_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventgrid_namespaces_sku" {
  description = "Map of sku values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "eventgrid_namespaces_tags" {
  description = "Map of tags values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eventgrid_namespaces_topic_spaces_configuration" {
  description = "Map of topic_spaces_configuration values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.topic_spaces_configuration if v.topic_spaces_configuration != null && length(v.topic_spaces_configuration) > 0 }
}

