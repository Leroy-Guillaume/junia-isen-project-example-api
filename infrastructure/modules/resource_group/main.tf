# Création d'un groupe de ressources Azure
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name  # Nom du groupe de ressources
  location = var.location             # Région Azure pour le groupe de ressources
}

