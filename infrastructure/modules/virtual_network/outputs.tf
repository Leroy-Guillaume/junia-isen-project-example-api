# ID du réseau virtuel
output "vnet_id" {
  description = "L'ID du réseau virtuel"
  value       = azurerm_virtual_network.application_vnet.id
}

# Nom du réseau virtuel
output "vnet_name" {
  description = "Le nom du réseau virtuel"
  value       = azurerm_virtual_network.application_vnet.name
}

# ID du sous-réseau pour l'App Service
output "app_service_subnet_id" {
  description = "L'ID du sous-réseau App Service"
  value       = azurerm_subnet.app_service_subnet.id
}

# ID du sous-réseau pour CosmosDB
output "cosmosdb_subnet_id" {
  description = "L'ID du sous-réseau CosmosDB"
  value       = azurerm_subnet.cosmosdb_subnet.id
}

# ID du sous-réseau par défaut
output "default_subnet_id" {
  description = "L'ID du sous-réseau par défaut"
  value       = azurerm_subnet.general_subnet.id
}
