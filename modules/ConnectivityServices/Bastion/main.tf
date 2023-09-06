resource "azurerm_subnet" "BSTN-SB1" {
  name = var.BSTN-SB1-name
  resource_group_name = var.resource-group-name
  virtual_network_name = var.vnet-name
  address_prefixes =  var.BSTN-SB1-address_prefixes
}

resource "azurerm_public_ip" "BSTN-pip" {
  name = var.BSTN-pip-name
  location = var.location
  resource_group_name = var.resource-group-name
  allocation_method = var.BSTN-pip-allocation_method
  sku = var.BSTN-pip-sku
}

resource "azurerm_bastion_host" "BHOST" {
  name = var.BHOST-name
  location = var.location
  resource_group_name = var.resource-group-name

  ip_configuration {
    name = var.BHOST-ip-name
    subnet_id = azurerm_subnet.BSTN-SB1.id
    public_ip_address_id = azurerm_public_ip.BSTN-pip.id
  }
  
}
