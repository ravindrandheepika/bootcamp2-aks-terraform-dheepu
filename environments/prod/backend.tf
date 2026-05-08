terraform {
  backend "azurerm" {
    resource_group_name  = "demo-aks"
    storage_account_name = "tfstateaksproddheepu143"
    container_name       = "demo"
    key                  = "prod.terraform.tfstate"
  }
}
