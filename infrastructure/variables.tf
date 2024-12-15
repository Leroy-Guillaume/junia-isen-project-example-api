# Préfixe pour nommer les ressources
variable "prefix" {
  description = "Préfixe pour nommer toutes les ressources (ex : shop-app)"
  type        = string
  default = "shop-app"
}

# Localisation des ressources Azure
variable "location" {
  description = "Région Azure pour le déploiement (ex : East US, West Europe)"
  type        = string
  default = "East US"
}

# Nom du groupe de ressources
variable "resource_group_name" {
  description = "Nom du groupe de ressources Azure"
  type        = string
  default = "shop-app-rg"
}

# Variables pour le réseau virtuel (Virtual Network)
variable "vnet_name" {
  description = "Nom du Virtual Network"
  type        = string
  default = "shop-app-vnet"
}

variable "address_space" {
  description = "Plage d'adresses pour le Virtual Network (ex : ['10.0.0.0/16'])"
  type        = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Nom du sous-réseau principal"
  type        = string
  default = "shop-app-subnet"
}

variable "subnet_address_prefixes" {
  description = "Plage d'adresses pour le sous-réseau (ex : ['10.0.1.0/24'])"
  type        = string
  default = "10.0.1.0/24"
}

# Variables pour CosmosDB
variable "cosmosdb_account_name" {
  description = "Nom du compte CosmosDB"
  type        = string
  default = "shop-app-cosmosdb"
}

variable "database_name" {
  description = "Nom de la base de données CosmosDB"
  type        = string
  default = "shop-app-db"
}

variable "cosmosdb_container_name" {
  description = "Nom du conteneur CosmosDB utilisé dans App Service"
  type        = string
  default = "shop-app-container"
}

# Variables pour le Blob Storage
variable "storage_account_name" {
  description = "Nom du compte de stockage Azure (doit être unique globalement)"
  type        = string
  default = "shopappstorage"
}

variable "items_container_name" {
  description = "Nom du conteneur pour les articles"
  type = string
  default = "Items"
}

variable "users_container_name" {
  description = "Nom du conteneur pour les utilisateurs"
  type = string
  default = "Users"
}

variable "baskets_container_name" {
  description = "Nom du conteneur pour les paniers"
  type = string
  default = "Baskets"
}

# Variables pour App Service
variable "docker_image" {
  description = "Nom et tag de l'image Docker (ex : user/app:latest)"
  type        = string
  default = "Guillaume-Louis-Steeven/shop-app:latest"
}

variable "api_secret" {
  description = "Clé secrète API utilisée par l'application"
  type        = string
  default = "top_secret_key"
}

variable "docker_user" {
  description = "Nom d'utilisateur pour le registre Docker"
  type        = string
}

variable "docker_pass" {
  description = "Mot de passe pour le registre Docker"
  type        = string
  sensitive   = true
}

variable "app_service_subnet_name" {
  description = "Nom du sous-réseau pour l'App Service"
  type        = string
  default = "app-service-subnet"
}

variable "subnet_app_service" {
  description = "Plage d'adresses pour le sous-réseau de l'App Service"
  type        = string
  default = "10.0.1.0/24"
}

variable "cosmosdb_subnet_name" {
  description = "Nom du sous-réseau pour CosmosDB"
  type        = string
  default = "cosmosdb-subnet"
}

variable "subnet_cosmosdb" {
  description = "Plage d'adresses pour le sous-réseau de CosmosDB"
  type        = string
  default = "10.0.3.0/24"
}

variable "default_subnet_name" {
  description = "Nom du sous-réseau par défaut"
  type        = string
  default = "default-subnet"
}

variable "default_subnet_address_prefix" {
  description = "Plage d'adresses pour le sous-réseau par défaut"
  type        = string
  default = "10.0.5.0/24"
}