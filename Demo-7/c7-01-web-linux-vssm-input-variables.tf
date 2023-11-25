# Linux VMSS Input Variables Placeholder file

 variable "web_vmss_nsg_inbound_ports" {
   description = "We VMSS NSG Inbound Ports"
   type = list(string)
    default = ["22", "80", "443"]
 }