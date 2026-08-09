resource "routeros_interface_vlan" "this" {
  name      = format("%s-vlan%d", var.bridge_name, var.vlan_id)
  vlan_id   = var.vlan_id
  interface = var.bridge_name
  comment   = var.comment
  disabled  = var.disabled
  arp       = var.arp
  arp_timeout = var.arp_timeout
  mtu       = var.mtu
  hw_offloaded = var.hw_offloaded
  mvrp      = var.mvrp
  use_service_tag = var.use_service_tag
}