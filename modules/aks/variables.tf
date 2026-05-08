variable "resource_group_name" {
  type        = string
  description = "Resource group where AKS will be deployed."
}

variable "location" {
  type        = string
  description = "Azure region for AKS."
}

variable "aks_name" {
  type        = string
  description = "Name of the AKS cluster."
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster."
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for AKS node pool."
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the default node pool."
}

variable "node_vm_size" {
  type        = string
  description = "VM size for AKS nodes."
}

variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to AKS resources."
  default     = {}
}
