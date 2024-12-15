output "resource_group_name" {
  value       = module.resource_group.resource_group_name
  description = "Nom du groupe de ressources via le module"
}

output "resource_group_location" {
  value       = module.resource_group.location
  description = "Région du groupe de ressources via le module"
}

output "app_service_url" {
  description = "URL publique de l'App Service"
  value       = module.app_service.app_service_default_hostname
}

output "cosmosdb_endpoint" {
  description = "Endpoint du compte CosmosDB"
  value       = module.cosmosdb.cosmosdb_endpoint
}

output "cosmosdb_container_name" {
  description = "Nom du conteneur CosmosDB utilisé dans App Service"
  value       = var.cosmosdb_container_name
}
