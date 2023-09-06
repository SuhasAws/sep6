variable "resource-group-name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "Location for deployment"
}

variable "vnet-name" {
    type = string
    description = "Virtual Network Name"
}

variable "vnet-address-space" {
    type = list(string)
    description = "Address space of virtual network"
}
variable "vnet-subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "vnet-subnet-address_prefixes" {
    type = list(string)
    description = "Address prefix of vnet subnet"
}

variable "pip-name" {
    type = string
    description = "Public IP name for Load Balancer"
}

variable "pip-allocation_method" {
    type = string
    description = "public IP allocation method"
}

variable "LB-name" {
    type = string
    description = "Name of Load Balancer"
}

variable "LB-FEIP-name" {
    type = string
    description = "Name of Front end IP"
}

variable "BEPool-name" {
    type = string
    description = "Name of Backend Pool"
}

variable "LBProbe-name" {
    type = string
    description = "Name of Probe"
}

variable "LBprobe-port" {
    type = number
    description = "Port number of Probe"
}

variable "LBRule-name" {
    type = string
    description = "Name of LB Rule"
}

variable "LBRule-protocol" {
    type = string
    description = "Protocol of LB Rule"
}

variable "LBRule-frontend-port" {
    type = number
    description = "port number of frontend"
}

variable "LBRule-backend-port" {
    type = number
    description = "port number of backend"
}

variable "frontend_ip_configuration_name" {
    type = string
    description = "Front End IP Name"
}

variable "NSG-name" {
    type = string
    description = "Network Security Group Name"
}

variable "NSR-name" {
    type = string
    description = "Network Security rule name"
}
variable "NSR-priority" {
    type = number
    description = "Priority of network security rule"
}
variable "NSR-direction" {
    type = string
    description = "Direction of network security rule"
}
variable "NSR-access" {
    type = string
    description = "Access of Network security rules"
}
variable "NSR-protocol" {
    type = string
    description = "protocol of network security rules"
}
variable "NSR-source_port_range" {
    description = "Range of ports to be used from source"
}
variable "NSR-destination_port_range" {
    description = "Range of ports to be used from destination"
    
}
variable "NSR-source_address_prefix" {
    description = "NSR source address prefix"
}
variable "NSR-destination_address_prefix" {
    description = "NSR destination address prefix"
}

variable "APGWSUBNT-name" {
    type = string
    description = "Name of Subnet"
}

variable "APGWSUBNT-address_prefixes" {
    type = list(string)
    description = "address prefix of subnet"
}
variable "pipAG-name" {
    type = string
    description = "Name of Public IP"
}
variable "pipAG-allocation_method" {
    type = string
    description = "Allocation method of public ip"
}
variable "pipAG-sku" {
    type = string
    description = "sku of public ip"
}
variable "APGW-name" {
    type = string
    description = "name of application gateway"
}
variable "APGW-sku-name" {
    type = string
    description = "sku name of application gateway"
}

variable "APGW-sku-tier" {
    type = string
    description = "tier of application gateway"
}
variable "APGW-sku-capacity" {
    type = number
    description = "capacity of sku"
}
variable "APGW-GIP-name" {
    type = string
    description = "name of gateway ip configuration"
}
variable "APGW-FEPORT-name" {
    type = string
    description = "name of frontendport"
}
variable "APGW-FEPORT-port" {
    type = number
    description = "port number of frontend port"
}
variable "APGW-FEIP-name" {
    type = string
    description = "name of frontend ip configuration"
}
variable "APGW-BEPOOL-name" {
    type = string
    description = "name of backend address pool"
}
variable "APGW-BPST-name" {
    type = string
    description = "name of backend http settings"
}
variable "APGW-BPST-cookie_based_affinity" {
    type = string
    description = "= cookie based affinity"
}
variable "APGW-BPST-port" {
    type = number
    description = "port number of backend http settings"
}
variable "APGW-BPST-protocol" {
    type = string
    description = "protocol of backend http settings"
}
variable "APGW-BPST-request_timeout" {
    type = number
    description = "request timeout number"
}
variable "APGW-BPLS-name" {
    type = string
    description = "name of backend http listener"
}
variable "APGW-BPLS-protocol" {
    type = string
    description = "protocol of backend http listener"
}
variable "APGW-BPRR-name" {
    type = string
    description = "name of backend request routing rule"
}
variable "APGW-BPRR-rule_type" {
    type = string
    description = "rule type of backend request routing rule"
}
variable "APGW-BPRR-priority" {
    type = number
    description = "priority of backend request routing rule"
}


variable "firewall_policy_name" {

    description = "name of your firewall policy"

    type = string

}

variable "firewall_policy_rule_collection_group_name" {

    description = "name of your firewall policy rule collection group."

    type = string

}

variable "firewall_policy_rule_collection_group_priority" {

    description = "priority"

    type = number

}

variable "app_rule_collection_name" {

    description = "name of your app rule collection"

    type = string

}

variable "app_rule_collection_priority" {

    description = "priority"

    type = number

}

variable "app_rule_collection_action" {

    description = "action"

    type = string

}

variable "app_rule_collection_rule1" {

    description = "app  rule collection rule 1"

    type = string

}

variable "app_rule_collection_rule1_protocol1" {

    description="app_rule_collection_rule1_protocol1"

    type = string

}

variable "app_rule_collection_rule1_port1" {

    description = "app_rule_collection_rule1_port1"

    type = number

}

variable "app_rule_collection_rule1_protocol2" {

    description = "app_rule_collection_rule1_protocol2"

    type = string

}

variable "app_rule_collection_rule1_port2" {

    description = "app_rule_collection_rule1_port2" 

    type = number

}

variable "app_rule_collection_source_addresses" {

    description = "app_rule_collection_source_addresses"

    type = list(string)

}

variable "app_rule_collection_destination_fqdns" {

    description = "app_rule_collection_destination_fqdns"

    type = list(string)

}

variable "network_rule_collection_name" {

    description = "network_rule_collection_name"

    type = string

}

variable "network_rule_collection_priority" {

    description = "network_rule_collection_priority"

    type = number

}

variable "network_rule_collection_action" {

    description = "network_rule_collection_action"

    type = string

}

variable "network_rule_collection_rule1_name" {

description = "network_rule_collection_rule1.name"

type = string

}

variable "network_rule_collection_rule1_protocols" {

    description = "network_rule_collection_rule1.protocols"

    type = list(string)

}

variable "network_rule_collection_rule1_source_addresses" {

description = "network_rule_collection_rule1.source_addresses"

type = list(string)

}

variable "network_rule_collection_rule1_destination_addresses" {

    description = "network_rule_collection_rule1.destination_addresses"

    type = list(string)

}

variable "network_rule_collection_rule1_destination_ports" {

    description = "network_rule_collection_rule1.destination_ports"

    type = list(string)

}

variable "nat_rule_collection_rule_name" {

    description = "nat_rule_collection_rule1_name"

    type = string

}

variable "nat_rule_collection_rule_priority" {

    description = "nat_rule_collection_rule1_name"

    type = number

}

variable "nat_rule_collection_rule_action" {

    description = "nat_rule_collection_rule1_name"

    type = string

}

variable "nat_rule_collection_rule1_name" {

    description = "nat_rule_collection_rule1_name"

    type = string

}

variable "nat_rule_collection_rule1_protocols" {

    description = "nat_rule_collection_rule1_protocols"

    type = list(string)

}

variable "nat_rule_collection_rule1_source_addresses" {

    description = "nat_rule_collection_rule1_source_addresses"

    type = list(string)

}

variable "nat_rule_collection_rule1_destination_address" {

    description = "nat_rule_collection_rule1_destination_address"

    type = string

}

variable "nat_rule_collection_rule1_destination_ports" {

    description = "nat_rule_collection_rule1_destination_ports"

    type = list(string)

}

variable "nat_rule_collection_rule1_translated_address" {

    description = "nat_rule_collection_rule1_translated_address"

    type = string

}

variable "nat_rule_collection_rule1_translated_port" {

    description = "nat_rule_collection_rule1_translated_port"

    type = string

}


variable "BSTN-SB1-name" {
    type = string
    description = "Name of Bastion Subnet"
}
variable "BSTN-SB1-address_prefixes" {
    type = list(string)
    description = "Address prefix of bastion subnet"
}
variable "BSTN-pip-name" {
    type = string
    description = "Name of Bastion Public IP"
}
variable "BSTN-pip-allocation_method" {
    type = string
    description = "Allocation method of bastion public ip"
}
variable "BSTN-pip-sku" {
    type = string
    description = "sku of bastion public ip"
}
variable "BHOST-name" {
    type = string
    description = "Name of Bastion Host "
}
variable "BHOST-ip-name" {
    type = string
    description = "name of bastion host ip config"
}


variable "resource-group2-name" {
    type = string
    description = "Resource Group 2 Name"
}

variable "location2" {
    type = string
    description = "2nd Location for deployment"
}

variable "vnet2-name" {
    type = string
    description = "Virtual Network 2 Name"
}

variable "vnet2-address-space" {
    type = list(string)
    description = "Address space of virtual network2 "
}
variable "vnet2-subnet2-name" {
    type = string
    description = "Name of vnet subnet 2"
}

variable "vnet2-subnet2-address_prefixes" {
    type = list(string)
    description = "Address prefix of vnet subnet 2"
}


variable "Nat-SB-name" {
    type = string
    description = "Name of Nat Subnet"
}
variable "Nat-SB-address_prefixes" {
    type = list(string)
    description = "Address prefix of nat subnet"
}
variable "NAT-pip-name" {
    type = string
    description = "Name of NAT Public IP"
}
variable "NAT-pip-allocation_method" {
    type = string
    description = "Allocation method of NAT Public IP"
}
variable "NAT-pip-sku" {
    type = string
    description = "SKU of Nat Public IP"
}
variable "NAT-GWY-name" {
    type = string
    description = "Name of NAT Gateway"
}
variable "NAT-GWY-sku_name" {
    type = string
    description = "Name of NAT Gateway SKU"
}


variable "TF-PIP-name" {
    type = string
    description = "name of traffic manager public ip"
}
variable "TF-PIP-allocation_method" {
    type = string
    description = "allocation method of traffic manager public ip"
}
variable "TF-PIP-domain_name_label" {
    type = string
    description = "domain label name of traffic manager public ip"
}
variable "TF-Profile-name" {
    type = string
    description = "name of traffic manager profile"
}
variable "TF-Profile-traffic_routing_method" {
    type = string
    description = "routing metho of traffic manager profile"
}
variable "TF-Profile-relative_name" {
    type = string
    description = "Traffic manager profile dns config relative name"
}
variable "TF-Profile-ttl" {
    type = number
    description = "Ttl of Traffic manager profile dns config "
}
variable "TF-Profile-protocol" {
    type = string
    description = "Traffic manager profile protocol"
}
variable "TF-Profile-port" {
    type = number
    description = "port number of traffic manager profile"
}
variable "TF-Profile-path" {
    description = "Profile path of traffic manager"
}
variable "TF-Profile-interval_in_seconds" {
    type = number
    description = "Traffic manager profile interval in seconds"
}
variable "TF-Profile-timeout_in_seconds" {
    type = number
    description = "Traffic manager profile timeout in seconds"
}
variable "TF-Profile-tolerated_number_of_failures" {
    type = number
    description = "Traffic manager profile tolerated number of failures"
}
variable "TF-endpoint-name" {
    type = string
    description = "Traffic manager endpoint name"
}
variable "TF-endpoint-weight" {
    type = number
    description = "Traffic manager end point weight"
}


variable "PTS-sb-name" {
    type = string
    description = "point to site subnet name"
}
variable "PTS-sb-address_prefixes" {
    type = list(string)
    description = "Point to site subnet address prefix"
}
variable "PTS-LNGonpremise-name" {
    type = string
    description = "Point to site local network gateway name"
}
variable "PTS-LNGonpremise-gateway_address" {
    type = string
    description = "Local network gateway address"
}
variable "PTS-LNGonpremise-address_space" {
    description = "local network gateway address space"
}
variable "PTS-pip-name" {
    type = string
    description = "Point to site public ip name"
}
variable "PTS-pip-allocation_method" {
    type = string
    description = "Point to site pubic ip allocation method"
}
variable "PTS-VNG-name" {
    type = string
    description = "Point to site virtual network gateway name"
}
variable "PTS-VNG-type" {
    type = string
    description = "Point to site virtual network gateway type"
}
variable "PTS-VNG-vpn_type" {
    type = string
    description = "Point to site virtual network vpn type"
}
variable "PTS-VNG-active_active" {
    type = string
    description = "Point to site vpn active active"
}
variable "PTS-VNG-enable_bgp" {
    type = string
    description = "Point to site virtual gateway bgp enable option"
}
variable "PTS-VNG-sku" {
    type = string
    description = "Point to site Virtual network gateway sku type"
}
variable "PTS-VNG-ipc-private_ip_address_allocation" {
    type = string
    description = "Dynamic"
}
variable "PTS-VNGC-name" {
    type = string
    description = "Point to site virtual network gateway connection name"
}
variable "PTS-VNGC-type" {
    type = string
    description = "Point to site virtual network gateway connection type"
}
variable "PTS-VNGC-shared_key" {
    type = string
    description = "Point to site Virtual network gateway shared key"
}
