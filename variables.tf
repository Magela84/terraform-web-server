variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "allowed_ssh_ip" {
  type        = string
  description = "Public IP allowed for SSH access (in CIDR, e.g., 203.0.113.4/32)"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the virtual machine"
}

variable "admin_ssh_key" {
  type        = string
  description = "SSH public key for the VM"
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}