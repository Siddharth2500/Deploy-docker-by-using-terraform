terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-resource-group"
    storage_account_name = "terraformstate000888"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
