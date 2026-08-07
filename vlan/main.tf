resource "routeros_interface_vlan" "this" {
  name      = "${var.bridge_name}-vlan${var.vlan_id}"
  vlan_id   = var.vlan_id
  interface = var.bridge_name
  comment   = "VLAN ${var.vlan_id} - ${var.vlan_name}"
}