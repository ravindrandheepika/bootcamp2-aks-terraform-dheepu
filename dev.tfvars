location = "canadacentral"

tags = {
  environment = "dev"
  project     = "bootcamp2-aks"
}

aks_name   = "demo-aks-dev-cluster"
dns_prefix = "demoaksdev"
node_count = 1
node_vm_size = "Standard_B2s_v2"
service_cidr   = "10.2.0.0/16"
dns_service_ip = "10.2.0.10"