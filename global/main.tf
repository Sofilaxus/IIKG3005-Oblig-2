terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }

  provider "azurerm" {
    subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb"
  features {}
}
}