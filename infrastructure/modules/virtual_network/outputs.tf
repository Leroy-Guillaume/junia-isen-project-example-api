# ID du réseau virtuel
output "vnet_id" {
  description = "L'ID du réseau virtuel"
  value       = azurerm_virtual_network.application_vnet.id
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

