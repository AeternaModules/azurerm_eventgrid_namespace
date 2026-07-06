output "eventgrid_namespaces" {
  description = "All eventgrid_namespace resources"
  value       = azurerm_eventgrid_namespace.eventgrid_namespaces
}
output "eventgrid_namespaces_capacity" {
  description = "List of capacity values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.capacity]
}
output "eventgrid_namespaces_identity" {
  description = "List of identity values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.identity]
}
output "eventgrid_namespaces_inbound_ip_rule" {
  description = "List of inbound_ip_rule values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.inbound_ip_rule]
}
output "eventgrid_namespaces_location" {
  description = "List of location values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.location]
}
output "eventgrid_namespaces_name" {
  description = "List of name values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.name]
}
output "eventgrid_namespaces_public_network_access" {
  description = "List of public_network_access values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.public_network_access]
}
output "eventgrid_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.resource_group_name]
}
output "eventgrid_namespaces_sku" {
  description = "List of sku values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.sku]
}
output "eventgrid_namespaces_tags" {
  description = "List of tags values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.tags]
}
output "eventgrid_namespaces_topic_spaces_configuration" {
  description = "List of topic_spaces_configuration values across all eventgrid_namespaces"
  value       = [for k, v in azurerm_eventgrid_namespace.eventgrid_namespaces : v.topic_spaces_configuration]
}

