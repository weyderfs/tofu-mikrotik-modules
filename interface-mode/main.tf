resource "routeros_interface_bridge_port" "this" {
  bridge                  = var.bridge_name
  interface               = var.port_name
  pvid                    = var.pvid
  frame_types             = var.frame_types
  comment                 = var.comment
  disabled                = var.disabled
  auto_isolate            = var.auto_isolate
  bpdu_guard              = var.bpdu_guard
  broadcast_flood         = var.broadcast_flood
  edge                    = var.edge
  fast_leave              = var.fast_leave
  horizon                 = var.horizon
  hw                      = var.hw
  ingress_filtering       = var.ingress_filtering
  internal_path_cost      = var.internal_path_cost
  learn                   = var.learn
  multicast_router        = var.multicast_router
  mvrp_applicant_state    = var.mvrp_applicant_state
  mvrp_registrar_state    = var.mvrp_registrar_state
  path_cost               = var.path_cost
  point_to_point          = var.point_to_point
  priority                = var.priority
  restricted_role         = var.restricted_role
  restricted_tcn          = var.restricted_tcn
  tag_stacking            = var.tag_stacking
  trusted                 = var.trusted
  unknown_multicast_flood = var.unknown_multicast_flood
  unknown_unicast_flood   = var.unknown_unicast_flood
}

resource "routeros_interface_ethernet" "ethernet" {
  factory_name             = var.factory_name
  name                     = var.port_name
  comment                  = var.ethernet_comment
  poe_out                  = var.poe_out
  poe_priority             = var.poe_priority
  poe_voltage              = var.poe_voltage
  poe_lldp_enabled         = var.poe_lldp_enabled
  power_cycle_interval     = var.power_cycle_interval
  power_cycle_ping_address = var.power_cycle_ping_address
  power_cycle_ping_enabled = var.power_cycle_ping_enabled
  power_cycle_ping_timeout = var.power_cycle_ping_timeout
}