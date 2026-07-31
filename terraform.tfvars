location            = "East US"
resource_group_name = "webapp-rg"
allowed_ssh_ip      = "203.0.113.4/32" # Replace with your actual IP address in CIDR format
admin_username      = "azureuser"
admin_ssh_key       = "ssh-rsa AAAAB3...your_public_key_here..." # Replace with your real SSH public key

tags = {
  environment = "dev"
  project     = "terraform-web-server"
}