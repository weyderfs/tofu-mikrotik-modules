locals {
  comment  = coalesce(var.comment, format("Bridge %s", var.bridge_name))
  use_auto_mac = var.auto_mac && var.admin_mac == null
}

resource "routeros_interface_bridge" "home" {
  name           = var.bridge_name
  vlan_filtering = var.vlan_filtering
  comment        = local.comment
  disabled       = var.disabled
  admin_mac      = var.admin_mac
  auto_mac       = local.use_auto_mac
  ageing_time    = var.ageing_time
  arp            = var.arp
  arp_timeout    = var.arp_timeout
  dhcp_snooping  = var.dhcp_snooping
  fast_forward   = var.fast_forward
  forward_delay  = var.forward_delay
  frame_types    = var.frame_types
  igmp_snooping  = var.igmp_snooping
  igmp_version   = var.igmp_version
  ingress_filtering = var.ingress_filtering
  last_member_interval    = var.last_member_interval
  last_member_query_count = var.last_member_query_count
  max_message_age = var.max_message_age
  membership_interval = var.membership_interval
  mtu             = var.mtu
  multicast_querier = var.multicast_querier
  multicast_router  = var.multicast_router
  mvrp            = var.mvrp
  priority        = var.priority
  protocol_mode   = var.protocol_mode
  querier_interval = var.querier_interval
  query_interval  = var.query_interval
  query_response_interval = var.query_response_interval
  region_name     = var.region_name
  region_revision = var.region_revision
  startup_query_count = var.startup_query_count
  startup_query_interval = var.startup_query_interval
  transmit_hold_count = var.transmit_hold_count

  lifecycle {
    ignore_changes = [
      # RouterOS auto-updates some values
      actual_mtu,
      dynamic,
      l2mtu,
      mac_address,
      running,
    ]
  }
}

output "bridge_name" {
  description = "Name of the created bridge"
  value       = routeros_interface_bridge.home.name
}