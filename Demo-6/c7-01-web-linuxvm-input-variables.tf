# Linux VM Input Variables Placeholder file

# Web Linux VM Instance Count
variable "web_linuxvm_instance_count" {
  description = "value for number of web linux vm instances"
  type = number
  default = 1
}

# Web LB Inbound NAT Ports for All VMSs
variable "lb_inbound_nat_ports" {
  description = "Web LB Inbound NAT Ports List"
  type = list(string)
  default = [ "1022", "2022", "3022", "4022", "5022" ]
}