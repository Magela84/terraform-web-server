output "public_ip_address" {
  description = "Public IP address of the web server"
  value       = azurerm_public_ip.main.ip_address
}

output "web_app_url" {
  description = "URL of the deployed web application"
  value       = "http://${azurerm_public_ip.main.ip_address}"
}