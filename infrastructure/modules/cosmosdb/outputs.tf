# Expose l'endpoint principal de connexion au compte CosmosDB
output "cosmosdb_endpoint" {
  description = "URL de l'endpoint principal pour accéder au compte CosmosDB"
  value       = azurerm_cosmosdb_account.shop_app_cosmosdb.endpoint
}

# Clé primaire pour authentifier les requêtes sur CosmosDB
output "cosmosdb_primary_key" {
  value       = data.azurerm_cosmosdb_account.shop_app_keys.primary_key
  description = "Clé primaire du compte CosmosDB"
  sensitive   = true
}

# Clé secondaire pour authentifier les requêtes sur CosmosDB
output "cosmosdb_secondary_key" {
  value       = data.azurerm_cosmosdb_account.shop_app_keys.secondary_key
  description = "Clé secondaire du compte CosmosDB"
  sensitive   = true
}

# Expose le nom de la base de données CosmosDB
output "cosmosdb_database_name" {
  description = "Nom de la base de données créée dans CosmosDB"
  value       = azurerm_cosmosdb_sql_database.shop_app_db.name
}

# Expose les noms des conteneurs dans CosmosDB
output "cosmosdb_items_container_name" {
  description = "Nom du conteneur 'Items' dans CosmosDB"
  value       = azurerm_cosmosdb_sql_container.items_container.name
}

output "cosmosdb_users_container_name" {
  description = "Nom du conteneur 'Users' dans CosmosDB"
  value       = azurerm_cosmosdb_sql_container.users_container.name
}

output "cosmosdb_baskets_container_name" {
  description = "Nom du conteneur 'Baskets' dans CosmosDB"
  value       = azurerm_cosmosdb_sql_container.baskets_container.name
}
