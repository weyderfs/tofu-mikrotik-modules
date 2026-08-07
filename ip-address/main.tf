resource "routeros_ip_address" "this" {
  address   = var.address
  interface = var.vlan_interface
  comment   = "Gateway IP for ${var.vlan_interface}"
}