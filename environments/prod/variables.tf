variable "location" {
  type        = string
  description = "Azure region for Prod environment."
}

variable "tags" {
  type        = map(string)
  description = "Tags for Prod environment."
}

variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "node_vm_size" {
  type = string
  }

  variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}
