# Crée un réseau virtuel Azure pour connecter les ressources nécessaires à l'application.
resource "azurerm_virtual_network" "application_vnet" {
  name                = var.vnet_name                 # Nom personnalisé du réseau virtuel.
  location            = var.location                  # Région Azure du déploiement.
  resource_group_name = var.resource_group_name       # Groupe de ressources associé.
  address_space       = [var.address_space]             # Définition de l'espace d'adressage du réseau virtuel.
}

# Sous-réseau pour l'App Service, dédié à l'application web.
resource "azurerm_subnet" "app_service_subnet" {
  name                 = var.app_service_subnet_name   # Identifiant unique pour ce sous-réseau.
  resource_group_name  = var.resource_group_name       # Nom du groupe de ressources parent.
  virtual_network_name = azurerm_virtual_network.application_vnet.name # Réseau virtuel hôte.
  address_prefixes     = [var.subnet_app_service]      # Plage IP réservée pour ce sous-réseau.

  # Associe ce sous-réseau aux services Azure App Service.
  delegation {
    name = "app_service_delegation"                   # Nom de la délégation.
    service_delegation {
      name    = "Microsoft.Web/serverFarms"           # Service autorisé.
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"] # Droits accordés.
    }
  }
}

# Sous-réseau spécifique à CosmosDB avec un point de terminaison de service.
resource "azurerm_subnet" "cosmosdb_subnet" {
  name                 = var.cosmosdb_subnet_name       # Nom du sous-réseau dédié à CosmosDB.
  resource_group_name  = var.resource_group_name        # Groupe de ressources parent.
  virtual_network_name = azurerm_virtual_network.application_vnet.name # Réseau virtuel hôte.
  address_prefixes     = [var.subnet_cosmosdb]          # Plage d'adresses assignée à ce sous-réseau.
  service_endpoints    = ["Microsoft.AzureCosmosDB"]    # Autorisation d'accès à CosmosDB.
}

# Sous-réseau générique pour d'autres ressources, comme des machines virtuelles.
resource "azurerm_subnet" "general_subnet" {
  name                 = var.default_subnet_name         # Nom du sous-réseau par défaut.
  resource_group_name  = var.resource_group_name         # Nom du groupe de ressources parent.
  virtual_network_name = azurerm_virtual_network.application_vnet.name # Réseau virtuel hôte.
  address_prefixes     = [var.default_subnet_address_prefix] # Plage IP allouée.
}
