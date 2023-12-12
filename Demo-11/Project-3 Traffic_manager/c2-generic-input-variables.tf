#Generic Input Variables
#Bussiness Division
variable "Bussiness_Division" {
  description = "Business Division in the large organization"
  type        = string
  default     = "devops"
}

#Environment Variables
variable "Environment" {
  description = "Environment Variables used as a prefix for all the resources"
  type        = string
  default     = "dev"
}

#Azure Resource Group Name
variable "Resource_Group_Name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "traffic-manager-rg"
}

#Azure Resource Location
variable "Resource_Location" {
  description = "Azure Resource Location"
  type        = string
  default     = "centralus"
}
