variable "storage_name" {
  type        = string
  description = "Name of the storage account."
}

variable "container_name" {
  type        = string
  description = "Name of the storage container."
}

variable "location" {
  type        = string
  description = "Azure region."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
}
