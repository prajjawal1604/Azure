#Virtual Network, Subnet and Subnet NSG's

#Virtual Network vnet_name
variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
  default     = "vnet-default"
}
#Virtual Network Address Space
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the Virtual Network"
  default     = ["10.0.0.0/16"]
}

#Web Subnet name web_subnet_name
variable "web_subnet_name" {
  type        = string
  description = "Name of the Web Subnet"
  default     = "web-subnet"
}
#Web Subnet Address Space web_subnet_address_space
variable "web_subnet_address_space" {
  type        = list(string)
  description = "Address space of the Web Subnet"
  default     = ["10.0.1.0/24"]
}

#App Subnet Name app_subnet_name
variable "app_subnet_name" {
  type        = string
  description = "Name of the App Subnet"
  default     = "app-subnet"
}
#App Subnet Address Space app_subnet_address_space
variable "app_subnet_address_space" {
  type        = list(string)
  description = "Address space of the App Subnet"
  default     = ["10.0.11.0/24"]
}

#DB Subnet Name db_subnet_name
variable "db_subnet_name" {
  type        = string
  description = "Name of the DB Subnet"
  default     = "db-subnet"
}
#DB Subnet Address Space db_subnet_address_space
variable "db_subnet_address_space" {
  type        = list(string)
  description = "Address space of the DB Subnet"
  default     = ["10.0.21.0/24"]
}

#Bastion / Management Subnet Name bastion_subnet_name
variable "bastion_subnet_name" {
  type        = string
  description = "Name of the Bastion / Management Subnet"
  default     = "bastion-subnet"
}
#Bastion / Management Subnet Address Space bastion_subnet_address_space
variable "bastion_subnet_address_space" {
  type        = list(string)
  description = "Address space of the Bastion / Management Subnet"
  default     = ["10.0.100.0/24"]
}