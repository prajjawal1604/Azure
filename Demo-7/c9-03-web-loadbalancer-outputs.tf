# LB Public IP
output "web_lb_public_ip_address" {
  value       = azurerm_public_ip.web_lbpublicip.ip_address
  description = "web Load Balancer Public IP Address"
}

# Load balancer ID
output "web_lb_id" {
  description = "web Load Balancer ID."
  value       = azurerm_lb.web_lb.id
}

#Load balancer Frontend IP Configuration Block
output "web_lb_frontend_ip_configuration" {
  description = "web Load Balancer Frontend IP Configuration Block."
  value       = [azurerm_lb.web_lb.frontend_ip_configuration]
}

