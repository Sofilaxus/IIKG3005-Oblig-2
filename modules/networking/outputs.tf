output "vnet" {
  value = azurerm_virtual_network.vnet
}

output "subnet" {
  value = azurerm_subnet.subnet
}

output "nsg" {
  value = azurerm_network_security_group.nsg
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}
