# # Bastion Linux VM Input Variables Placeholder files.
# variable "bashtion_service_subnet_name" {
#   description = "Bastion Service Subnet Name"
#   default     = "AzureBastionSubnet" # This is the default name of the Bastion Service Subnet. We can't change it if we want.
# }

# variable "bastion_service_address_prefix" {
#   description = "Bastion Service Subnet Address Prefix"
#   default     = ["10.0.101.0/27"] #min we can have is /27 not less than that.
# }

# # Bastion Host : Linux VM
# # Bastion Service : Azure Bastion Service(ABS)

# #Once we have created the Bastion Service we can't delete it. We can only disable it.
# #Bastion Service is a PAAS service provided by Azure. It is a fully managed service. We don't need to manage the underlying infrastructure.