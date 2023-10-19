terraform {
  backend "azure"{}
  }


terraform {

  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version = "=3.0.0"

    }


# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  # version = "=2.20.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}
