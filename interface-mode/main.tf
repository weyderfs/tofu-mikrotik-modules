locals {
  is_trunk          = length(var.tagged_vlans) > 0
  frame_types_value = local.is_trunk ? "admit-only-vlan-tagged" : "admit-only-untagged-and-priority-tagged"
  default_comment   = local.is_trunk ? "Trunk port - VLANs: ${join(",", var.tagged_vlans)}" : "Access port - VLAN ${var.pvid}"
  comment           = coalesce(var.comment, local.default_comment)
}

resource "routeros_interface_bridge_port" "this" {
  bridge            = var.bridge_name
  interface         = var.port_name
  pvid              = var.pvid
  frame_types       = local.frame_types_value
  comment           = local.comment
  disabled          = var.disabled
  auto_isolate      = var.auto_isolate
  bpdu_guard        = var.bpdu_guard
  broadcast_flood   = var.broadcast_flood
  edge              = var.edge
  fast_leave        = var.fast_leave
  horizon           = var.horizon
  hw                = var.hw
  ingress_filtering = var.ingress_filtering
  internal_path_cost = var.internal_path_cost
  learn             = var.learn
  multicast_router  = var.multicast_router
  mvrp_applicant_state = var.mvrp_applicant_state
  mvrp_registrar_state = var.mvrp_registrar_state
  path_cost         = var.path_cost
  point_to_point    = var.point_to_point
  priority          = var.priority
  restricted_role   = var.restricted_role
  restricted_tcn    = var.restricted_tcn
  tag_stacking      = var.tag_stacking
  trusted           = var.trusted
  unknown_multicast_flood = var.unknown_multicast_flood
  unknown_unicast_flood   = var.unknown_unicast_flood

  lifecycle {
    ignore_changes = [
      designated_bridge,
      designated_bridge_id,
      designated_cost,
      designated_port_id,
      designated_port_number,
      dynamic,
      edge_port,
      external_fdb_status,
      forwarding,
      hw_offload,
      hw_offload_group,
      id,
      inactive,
      last_topology_change,
      learning,
      nextid,
      point_to_point_port,
      port_id,
      role,
      root_path_cost,
      sending_rstp,
      status,
    ]
  }
}

output "bridge_port_id" {
  description = "Resource ID of the bridge port configuration"
  value       = routeros_interface_bridge_port.this.id
}