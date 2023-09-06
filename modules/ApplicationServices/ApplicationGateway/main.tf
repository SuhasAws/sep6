resource "azurerm_subnet" "APGWSUBNT" {
  name                 = var.APGWSUBNT-name
  resource_group_name  = var.resource-group-name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.APGWSUBNT-address_prefixes
}

resource "azurerm_public_ip" "pipAG" {
  name                = var.pipAG-name
  resource_group_name = var.resource-group-name
  location            = var.location
  allocation_method   = var.pipAG-allocation_method
  sku                 = var.pipAG-sku
}


resource "azurerm_application_gateway" "APGW" {
  name                = var.APGW-name
  resource_group_name = var.resource-group-name
  location            = var.location

  sku {
    name     = var.APGW-sku-name
    tier     = var.APGW-sku-tier
    capacity = var.APGW-sku-capacity
  }

  gateway_ip_configuration {
    name      = var.APGW-GIP-name
    subnet_id = azurerm_subnet.APGWSUBNT.id
  } 


  frontend_port {
    name = var.APGW-FEPORT-name
    port = var.APGW-FEPORT-port
  }

  frontend_ip_configuration {
    name                 = var.APGW-FEIP-name
    public_ip_address_id = azurerm_public_ip.pipAG.id
  }

  backend_address_pool {
    name = var.APGW-BEPOOL-name
  }

  backend_http_settings {
    name                  = var.APGW-BPST-name
    cookie_based_affinity = var.APGW-BPST-cookie_based_affinity
    port                  = var.APGW-BPST-port
    protocol              = var.APGW-BPST-protocol
    request_timeout       = var.APGW-BPST-request_timeout
  }

  http_listener {
    name                           = var.APGW-BPLS-name
    frontend_ip_configuration_name = var.APGW-FEIP-name
    frontend_port_name             = var.APGW-FEPORT-name
    protocol                       = var.APGW-BPLS-protocol
  }

  request_routing_rule {
    name                       = var.APGW-BPRR-name
    rule_type                  = var.APGW-BPRR-rule_type
    http_listener_name         = var.APGW-BPLS-name
    backend_address_pool_name  = var.APGW-BEPOOL-name
    backend_http_settings_name = var.APGW-BPST-name
    priority                   = var.APGW-BPRR-priority
  }
}

resource "azurerm_firewall_policy" "firewallpolicy" {
  name                = var.firewall_policy_name
  resource_group_name = var.resource-group-name
  location            = var.location
}

 

resource "azurerm_firewall_policy_rule_collection_group" "policycollection" {
  name               = var.firewall_policy_rule_collection_group_name
  firewall_policy_id = azurerm_firewall_policy.firewallpolicy.id
  priority           = var.firewall_policy_rule_collection_group_priority
  application_rule_collection {
    name     = var.app_rule_collection_name
    priority = var.app_rule_collection_priority
    action   = var.app_rule_collection_action
    rule {
      name = var.app_rule_collection_rule1
      protocols {
        type = var.app_rule_collection_rule1_protocol1
        port = var.app_rule_collection_rule1_port1
      }
      protocols {
        type = var.app_rule_collection_rule1_protocol2
        port = var.app_rule_collection_rule1_port2
      }
      source_addresses  = var.app_rule_collection_source_addresses
      destination_fqdns = var.app_rule_collection_destination_fqdns
    }
  }

 

  network_rule_collection {
    name     = var.network_rule_collection_name
    priority = var.network_rule_collection_priority
    action   = var.network_rule_collection_action
    rule {
      name                  = var.network_rule_collection_rule1_name
      protocols             = var.network_rule_collection_rule1_protocols
      source_addresses      = var.network_rule_collection_rule1_source_addresses
      destination_addresses = var.network_rule_collection_rule1_destination_addresses
      destination_ports     = var.network_rule_collection_rule1_destination_ports
    }
  }

 

  nat_rule_collection {
    name     = var.nat_rule_collection_rule_name
    priority = var.nat_rule_collection_rule_priority
    action   = var.nat_rule_collection_rule_action
    rule {
      name                = var.nat_rule_collection_rule1_name
      protocols           = var.nat_rule_collection_rule1_protocols
      source_addresses    = var.nat_rule_collection_rule1_source_addresses
      destination_address = var.nat_rule_collection_rule1_destination_address
      destination_ports   = var.nat_rule_collection_rule1_destination_ports
      translated_address  = var.nat_rule_collection_rule1_translated_address
      translated_port     = var.nat_rule_collection_rule1_translated_port
    }
  }
}
