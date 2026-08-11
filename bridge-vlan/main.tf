resource "routeros_interface_bridge_vlan" "this" {
  bridge         = var.bridge_name
  vlan_ids       = var.vlan_ids
  tagged         = var.tagged
  untagged       = var.untagged
  comment        = var.comment
  disabled       = var.disabled
  mvrp_forbidden = var.mvrp_forbidden
}
