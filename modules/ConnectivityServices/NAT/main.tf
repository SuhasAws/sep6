resource "azurerm_subnet" "Nat-SB" {
  name                 = var.Nat-SB-name
  resource_group_name  = var.resource-group2-name 
  virtual_network_name = var.vnet2-name
  address_prefixes     = var.Nat-SB-address_prefixes
}

resource "azurerm_public_ip" "NAT-pip" {
  name                = var.NAT-pip-name
  location            = var.location2
  resource_group_name = var.resource-group2-name 
  allocation_method   = var.NAT-pip-allocation_method
  sku                 = var.NAT-pip-sku
}

resource "azurerm_nat_gateway" "NAT-GWY" {
  name                = var.NAT-GWY-name
  location            = var.location2
  resource_group_name = var.resource-group2-name 
  sku_name            = var.NAT-GWY-sku_name
}

resource "azurerm_nat_gateway_public_ip_association" "example" {
  nat_gateway_id       = azurerm_nat_gateway.NAT-GWY.id
  public_ip_address_id = azurerm_public_ip.NAT-pip.id
}


resource "azurerm_subnet_nat_gateway_association" "example1" {
  subnet_id      = azurerm_subnet.Nat-SB.id
  nat_gateway_id = azurerm_nat_gateway.NAT-GWY.id
}
