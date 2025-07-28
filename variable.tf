variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "demoresource"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralindia"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet1"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnets" {
  description = "List of subnet definitions"
  type = list(object({
    name           = string
    address_prefix = list(string)
  }))
  default = [
    {
      name           = "subnet1"
      address_prefix = ["10.0.1.0/24"]
    },
    {
      name           = "subnet2"
      address_prefix = ["10.0.2.0/24"]
    }
  ]
}

variable "admin_username" {
  description = "Admin username for the Windows VM"
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "Admin password for the Windows VM"
  type        = string
  sensitive   = true
}
