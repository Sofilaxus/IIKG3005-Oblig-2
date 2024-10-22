variable "nsgname" {
  type        = string
  description = "The name of the network security group"
  default     = "nsg-ssm-02"
}

variable "vnetname" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet-ssm-02"
}

variable "rgname" {
  type        = string
  description = "The name of the resrouce group"
  default     = "rg-ssm-02"
}

variable "location" {
  type        = string
  description = "the location of the resource group"
  default     = "westeurope"
}

variable "subnetname" {
  type        = string
  description = "the name of the subnet"
  default     = "subnet-ssm"
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