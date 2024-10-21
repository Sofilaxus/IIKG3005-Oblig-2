terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg_ssm_oblig2"
    storage_account_name = "sassmoblig2"
    container_name = "sc-sa-ssm-oblig2"
    key = "ssm-oblig2-key"
  }
}

provider "azurerm" {
    subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb"
  features {}
}