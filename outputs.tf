output "eventgrid_namespaces_capacity" {
  description = "Map of capacity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.capacity }
}
output "eventgrid_namespaces_identity" {
  description = "Map of identity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.identity }
}
output "eventgrid_namespaces_inbound_ip_rule" {
  description = "Map of inbound_ip_rule values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.inbound_ip_rule }
}
output "eventgrid_namespaces_location" {
  description = "Map of location values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.location }
}
output "eventgrid_namespaces_name" {
  description = "Map of name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.name }
}
output "eventgrid_namespaces_public_network_access" {
  description = "Map of public_network_access values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.public_network_access }
}
output "eventgrid_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.resource_group_name }
}
output "eventgrid_namespaces_sku" {
  description = "Map of sku values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.sku }
}
output "eventgrid_namespaces_tags" {
  description = "Map of tags values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.tags }
}
output "eventgrid_namespaces_topic_spaces_configuration" {
  description = "Map of topic_spaces_configuration values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = { for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : k => v.topic_spaces_configuration }
}

