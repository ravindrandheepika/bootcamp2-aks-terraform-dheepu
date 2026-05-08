terraform {
  backend "azurerm" {
    resource_group_name  = "demo-aks"
    storage_account_name = "tfstateaksdevdheepu143"
    container_name       = "demo"
    key                  = "dev.terraform.tfstate"
  }
}