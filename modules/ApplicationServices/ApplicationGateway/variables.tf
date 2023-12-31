variable "resource-group-name" {}
variable "location" {}
variable "vnet-name" {}
variable "APGWSUBNT-name" {}
variable "APGWSUBNT-address_prefixes" {}
variable "pipAG-name" {}
variable "pipAG-allocation_method" {}
variable "pipAG-sku" {}
variable "APGW-name" {}
variable "APGW-sku-name" {}
variable "APGW-sku-tier" {}
variable "APGW-sku-capacity" {}
variable "APGW-GIP-name" {}
variable "APGW-FEPORT-name" {}
variable "APGW-FEPORT-port" {}
variable "APGW-FEIP-name" {}
variable "APGW-BEPOOL-name" {}
variable "APGW-BPST-name" {}
variable "APGW-BPST-cookie_based_affinity" {}
variable "APGW-BPST-port" {}
variable "APGW-BPST-protocol" {}
variable "APGW-BPST-request_timeout" {}
variable "APGW-BPLS-name" {}
variable "APGW-BPLS-protocol" {}
variable "APGW-BPRR-name" {}
variable "APGW-BPRR-rule_type" {}
variable "APGW-BPRR-priority" {}

variable "firewall_policy_name" {}
variable "firewall_policy_rule_collection_group_name" {}
variable "firewall_policy_rule_collection_group_priority" {}
variable "app_rule_collection_name" {}
variable "app_rule_collection_priority" {}
variable "app_rule_collection_action" {}
variable "app_rule_collection_rule1" {}
variable "app_rule_collection_rule1_protocol1" {}
variable "app_rule_collection_rule1_port1" {}
variable "app_rule_collection_rule1_protocol2" {}
variable "app_rule_collection_rule1_port2" {}
variable "app_rule_collection_source_addresses" {}
variable "app_rule_collection_destination_fqdns" {}
variable "network_rule_collection_name" {}
variable "network_rule_collection_priority" {}
variable "network_rule_collection_action" {}
variable "network_rule_collection_rule1_name" {}
variable "network_rule_collection_rule1_protocols" {}
variable "network_rule_collection_rule1_source_addresses" {}
variable "network_rule_collection_rule1_destination_addresses" {}
variable "network_rule_collection_rule1_destination_ports" {}
variable "nat_rule_collection_rule_name" {}
variable "nat_rule_collection_rule_priority" {}
variable "nat_rule_collection_rule_action" {}
variable "nat_rule_collection_rule1_name" {}
variable "nat_rule_collection_rule1_protocols" {}
variable "nat_rule_collection_rule1_source_addresses" {}
variable "nat_rule_collection_rule1_destination_address" {}
variable "nat_rule_collection_rule1_destination_ports" {}
variable "nat_rule_collection_rule1_translated_address" {}
variable "nat_rule_collection_rule1_translated_port" {}
