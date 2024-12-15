output "resource_group_name" {
  description = "Nom du groupe de ressources créé"
  value       = azurerm_resource_group.resource_group.name
}

output "location" {
  description = "Région Azure où le groupe de ressources est déployé"
  value       = azurerm_resource_group.resource_group.location
}
