resource "azurerm_resource_group" "rg-storage-acc" {
  name     = "rg-storage-acc"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage-account" {
  name                     = "storage-tri"
  resource_group_name      = azurerm_resource_group.rg-storage-acc.name
  location                 = azurerm_resource_group.rg-storage-acc.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}