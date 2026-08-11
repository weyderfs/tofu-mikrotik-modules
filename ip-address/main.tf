resource "routeros_ip_address" "this" {
  address   = var.address
  interface = var.vlan_interface
  comment   = var.comment
  disabled  = var.disabled
  network   = var.network
}