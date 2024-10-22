# Main
/*
variable "az_credentials" {
  description = "Container for Azure-credentials"
  type = object({
    tenant_id       = string
    client_id       = string
    client_secret   = string
    subscription_id = string
  })
}
*/

variable "rgname" {
  type = string
  description = "The name of the resource group"
  default = "rgssm"
}

# Network module 
variable "vnetname" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet-ssm-02"
}

variable "vnetas" {
  type        = list(string)
  description = "List of virtual network address spaces"
  default     = ["10.0.0.0/16"]
}

variable "subnetap" {
  type        = list(string)
  description = "List of subnet address prefixes"
  default     = ["10.0.1.0/24"]
}

variable "nsgname" {
  type        = string
  description = "The name of the network security group"
  default     = "nsg-ssm-02"
}