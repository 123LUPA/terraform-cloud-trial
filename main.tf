
terraform {
  backend "remote" {
    organization = "123trial"

    workspaces {
      name = "terraform-cloud-trial"
    }
  }
}

# Create a new resource group
resource "azurerm_resource_group" "rg" {
    name     = "myTFResourceGroup"
    location = "eastus"

    tags = {
        Environment = "Terraform Getting Started"
        Team = "DevOps"
  }
}
