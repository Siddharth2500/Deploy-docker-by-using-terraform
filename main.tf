resource "azurerm_resource_group" "azure_contianer_rg" {
  name     = "terraform-resource-group"
  location = var.location
}

resource "azurerm_container_registry" "terraform_docker_acr" {
  name                = "terraformacr0088"
  resource_group_name = azurerm_resource_group.azure_contianer_rg.name
  location            = azurerm_resource_group.azure_contianer_rg.location
  sku                 = "Basic"
}
