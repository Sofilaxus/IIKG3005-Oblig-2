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

# Workspace, e.g. dev, prod, staging
locals {
  workspace_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name = terraform.workspace == "default" ? "${var.rg_name}" : "${var.rg_name}-${local.workspace_suffix}"
  sa_name = "${var.sa_name}${local.workspace_suffix}"
}

# Generate Random String
resource "random_string" "random_string" {
  length  = 6
  special = false
  upper   = false
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.rgname}-${local.base_name}-${random_string.random_string.result}"
  location = local.location
}

# Network module
module "network" {
  source   = "./modules/networking"
  rgname   = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  vnetname = var.vnetname
  vnetas   = var.vnetas
  subnetap = var.subnetap
  nsgname  = var.nsgname
}

}