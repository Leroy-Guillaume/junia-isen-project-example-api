# Output pour le nom du groupe de ressources
output "resource_group_name" {
  value       = azurerm_resource_group.resource_group.name
  description = "Nom du groupe de ressources créé par le module"
}

# Output pour la région du groupe de ressources
output "location" {
  value       = azurerm_resource_group.resource_group.location
  description = "Région Azure du groupe de ressources"
}
