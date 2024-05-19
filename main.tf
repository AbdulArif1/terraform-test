terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
resource "azurerm_storage_account" "example" {
  name                     = "test-storageaccount"
  resource_group_name      = "test-RG"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}
