variable "location" {
  type        = string
  description = "Azure region for all resources."
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to all resources."
  default     = {}
}

variable "node_count" {
  type        = number
  description = "Number of AKS nodes."
}

variable "node_vm_size" {
  type        = string
  description = "VM size for AKS nodes."
}

variable "service_cidr" {
  type        = string
  description = "Service CIDR for AKS."
}

variable "dns_service_ip" {
  type        = string
  description = "DNS service IP for AKS."
}

variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}
