variable "location" {
 description = "The location where resources will be created"
 default     = "Central India"
 type = string
}

variable "tags" {
 description = "A map of the tags to use for the resources that are deployed"
 type        = map(string)

 default = {
   environment = "demo"
 }
}

variable "resource_group_name" {
 description = "The name of the resource group in which the resources will be created"
 default     = "VMSS"
 type = string
}

locals {
  regions_with_availability_zones = ["centalindia"] #["centralus","eastus2","eastus","westus"]
  zones = contains(local.regions_with_availability_zones, var.location) ? list("1","2","3") : null
}


output "zones" {
  value = local.zones
}
    

variable "azurerm_virtual_network" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMSSnet"
 type = string
}

variable "azurerm_virtual_machine_scale_set" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMScaleSet"
 type = string
}

variable "availability_zone_names" {
 description = "The name of the virtual network in which the resources will be created"
 default     = ["eastus"]
 type    = list(string)
}