# Nom du réseau virtuel
variable "vnet_name" {
  description = "Nom du réseau virtuel à créer"
  type        = string
}

# Adresse IP pour le réseau virtuel
variable "address_space" {
  description = "Plage d'adresses IP pour le réseau virtuel (ex: ['10.0.0.0/16'])"
  type        = string
}

# Nom du groupe de ressources
variable "resource_group_name" {
  description = "Nom du groupe de ressources où le réseau virtuel sera déployé"
  type        = string
}

# Région de déploiement
variable "location" {
  description = "Région Azure pour le déploiement des ressources"
  type        = string
}

# Sous-réseau pour l'App Service
variable "app_service_subnet_name" {
  description = "Nom du sous-réseau dédié à l'App Service"
  type        = string
}

variable "subnet_app_service" {
  description = "Plage d'adresses IP pour le sous-réseau App Service (ex: ['10.0.1.0/24'])"
  type        = string
}

# Sous-réseau pour CosmosDB
variable "cosmosdb_subnet_name" {
  description = "Nom du sous-réseau dédié à CosmosDB"
  type        = string
}

variable "subnet_cosmosdb" {
  description = "Plage d'adresses IP pour le sous-réseau CosmosDB (ex: ['10.0.2.0/24'])"
  type        = string
}

# Sous-réseau par défaut pour d'autres usages
variable "default_subnet_name" {
  description = "Nom du sous-réseau par défaut pour les ressources générales"
  type        = string
}

variable "default_subnet_address_prefix" {
  description = "Plage d'adresses IP pour le sous-réseau par défaut (ex: ['10.0.3.0/24'])"
  type        = string
}

