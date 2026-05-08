variable "vnet_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet."
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet."
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "Address prefixes for the subnet."
}

variable "location" {
  type        = string
  description = "Azure region."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
}
