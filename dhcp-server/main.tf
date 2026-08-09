locals {
  pool_comment         = coalesce(var.pool_comment, format("DHCP pool for %s", var.vlan_name))
  dhcp_server_comment  = coalesce(var.dhcp_server_comment, format("DHCP server for %s", var.vlan_name))
  dhcp_network_comment = coalesce(var.dhcp_network_comment, format("DHCP network for %s", var.vlan_name))
}

resource "routeros_ip_pool" "this" {
  name    = format("pool-%s", var.vlan_name)
  ranges  = var.dhcp_range
  comment = local.pool_comment
  next_pool = var.next_pool
}

resource "routeros_ip_dhcp_server" "this" {
  name                  = format("dhcp-%s", var.vlan_name)
  interface             = var.vlan_interface
  address_pool          = routeros_ip_pool.this.name
  lease_time            = var.lease_time
  disabled              = var.disabled
  comment               = local.dhcp_server_comment
  add_arp               = var.add_arp
  address_lists         = var.address_lists
  allow_dual_stack_queue = var.allow_dual_stack_queue
  always_broadcast      = var.always_broadcast
  authoritative         = var.authoritative
  bootp_lease_time    = var.bootp_lease_time
  bootp_support       = var.bootp_support
  client_mac_limit    = var.client_mac_limit
  conflict_detection  = var.conflict_detection
  delay_threshold     = var.delay_threshold
  dhcp_option_set     = var.dhcp_option_set
  dynamic_lease_identifiers = var.dynamic_lease_identifiers
  insert_queue_before = var.insert_queue_before
  lease_script        = var.lease_script
  parent_queue        = var.parent_queue
  relay               = var.relay
  src_address         = var.src_address
  support_broadband_tr101 = var.support_broadband_tr101
  use_framed_as_classless = var.use_framed_as_classless
  use_radius          = var.use_radius
  use_reconfigure     = var.use_reconfigure

  depends_on = [routeros_ip_pool.this]
}

resource "routeros_ip_dhcp_server_network" "this" {
  address             = var.vlan_subnet
  gateway             = var.gateway
  dns_server          = var.dns_servers
  comment             = local.dhcp_network_comment
  boot_file_name      = var.boot_file_name
  caps_manager        = var.caps_manager
  dhcp_option         = var.dhcp_option
  dns_none            = var.dns_none
  domain              = var.domain
  netmask             = var.netmask
  next_server         = var.next_server
  ntp_none            = var.ntp_none
  ntp_servers         = var.ntp_servers
  wins_servers        = var.wins_servers

  depends_on = [routeros_ip_dhcp_server.this]
}

output "dhcp_server_name" {
  description = "Name of the DHCP server instance"
  value       = routeros_ip_dhcp_server.this.name
}

output "ip_pool_name" {
  description = "Name of the IP pool"
  value       = routeros_ip_pool.this.name
}