# Linux VM Input Variables Placeholder file
variable "app_vmss_nsg_inbound_ports" {
  type        = list(string)
  description = "The list of inbound ports to be opened on the NSG"
  default     = ["22", "80", "443"]
}