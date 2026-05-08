locals {
  environment = "dev"
}

module "rg" {
  source  = "../../modules/rg"
  rg_name = "demo-aks-dev"
  location = var.location
  tags = var.tags
}

module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "demo-vnet-dev"
  address_space       = ["10.0.0.0/16"]
  subnet_name         = "demo-subnet-dev"
  subnet_prefixes     = ["10.0.1.0/24"]
  location            = var.location
  resource_group_name = module.rg.rg_name
}

module "storage" {
  source              = "../../modules/storage"
  storage_name        = "backendstorage143dev"
  container_name      = "demo"
  location            = var.location
  resource_group_name = module.rg.rg_name
}

module "aks" {
  source = "../../modules/aks"

  resource_group_name = module.rg.rg_name
  location            = var.location
  aks_name            = "demo-aks-dev-cluster"
  dns_prefix          = "demoaksdev"
  subnet_id           = module.vnet.subnet_id

  node_count   = var.node_count
  node_vm_size = var.node_vm_size

  service_cidr   = var.service_cidr
  dns_service_ip = var.dns_service_ip

  tags = var.tags
}