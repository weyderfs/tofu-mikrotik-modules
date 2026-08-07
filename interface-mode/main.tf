locals {
  is_trunk = length(var.tagged_vlans) > 0
  frame_types = local.is_trunk ? "admit-only-vlan-tagged" : "admit-only-untagged-and-priority-tagged"
}

resource "routeros_interface_bridge_port" "this" {
  bridge      = var.bridge_name
  interface   = var.port_name
  pvid        = var.pvid
  frame_types = local.frame_types
  comment     = local.is_trunk ? "Trunk port - VLANs: ${join(",", var.tagged_vlans)}" : "Access port - VLAN ${var.pvid}"
}