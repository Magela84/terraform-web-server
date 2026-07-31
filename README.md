README.md# terraform-web-server
This project provisions a basic Azure cloud infrastructure for a web application using Terraform.
## Resources Created
- **Resource group**- **Virtual network**- **Three subnets**: frontend, backend, database- **Linux virtual machine** (Ubuntu) with Nginx installed automatically- **Public IP address**- **Network security group** (with custom rules for SSH and HTTP)- **Network interface**
## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed- An Azure account
## Setup & Usage
1. **Clone this repository** to your local machine.2. **Update `terraform.tfvars`** with your values, especially your public SSH key and allowed SSH IP.3. **Initialize** the Terraform project:    ```sh    terraform init    ```4. **View the planned changes**:    ```sh    terraform plan    ```5. **Apply the configuration**:    ```sh    terraform apply    ```6. After deployment, **find the server's public IP and web URL** in the Terraform outputs.
## Security
- **SSH access** is only allowed from the IP address you specify.- **HTTP (port 80)** is open to everyone.- **All other inbound traffic** is blocked.- **Do not commit sensitive information** (like private keys) to source control.
## Cleanup
To destroy the resources and avoid ongoing charges:```shterraform destroyNotes
All resources are tagged for easy identification.
Adjust terraform.tfvars for different environments (dev, staging, prod).

---

## Author

Magela Bobby Akinola