resource "azurerm_public_ip" "TF-PIP" {
  name                = var.TF-PIP-name
  location            = var.location2
  resource_group_name = var.resource-group2-name   
  allocation_method   = var.TF-PIP-allocation_method
  domain_name_label   = var.TF-PIP-domain_name_label
}


resource "azurerm_traffic_manager_profile" "TF-Profile" {
  name                   = var.TF-Profile-name
  resource_group_name    = var.resource-group2-name   
  traffic_routing_method = var.TF-Profile-traffic_routing_method

  dns_config {
    relative_name = var.TF-Profile-relative_name
    ttl           = var.TF-Profile-ttl
  }

  monitor_config {
    protocol                     = var.TF-Profile-protocol
    port                         = var.TF-Profile-port
    path                         = var.TF-Profile-path
    interval_in_seconds          = var.TF-Profile-interval_in_seconds
    timeout_in_seconds           = var.TF-Profile-timeout_in_seconds
    tolerated_number_of_failures = var.TF-Profile-tolerated_number_of_failures
  }
}

resource "azurerm_traffic_manager_azure_endpoint" "TF-endpoint" {
  name               = var.TF-endpoint-name
  profile_id         = azurerm_traffic_manager_profile.TF-Profile.id
  weight             = var.TF-endpoint-weight
  target_resource_id = azurerm_public_ip.TF-PIP.id
}
