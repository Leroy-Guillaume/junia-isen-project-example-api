output "resource_group_name" {
  value       = module.resource_group.resource_group_name
  description = "Nom du groupe de ressources via le module"
}

output "resource_group_location" {
  value       = module.resource_group.location
  description = "Région du groupe de ressources via le module"
}


output "vnet_id" {
  description = "ID du réseau virtuel"
  value       = module.virtual_network.vnet_id
}

output "app_service_url" {
  description = "URL publique de l'App Service"
  value       = module.app_service.app_service_default_hostname
}

output "cosmosdb_endpoint" {
  description = "Endpoint du compte CosmosDB"
  value       = module.cosmosdb.cosmosdb_endpoint
}

output "blob_storage_url" {
  description = "URL du blob storage"
  value       = module.blob_storage.storage_url
}
