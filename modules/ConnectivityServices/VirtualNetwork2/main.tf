resource "azurerm_virtual_network" "vnet2" {
  name                = var.vnet2-name
  address_space       = var.vnet2-address-space
  location            = var.location2
  resource_group_name = var.resource-group2-name
} 

resource "azurerm_subnet" "vnet2-subnet2" {
  name                 = var.vnet2-subnet2-name
  resource_group_name  = var.resource-group2-name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = var.vnet2-subnet2-address_prefixes
}
