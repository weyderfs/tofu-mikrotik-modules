resource "routeros_interface_bridge" "home" {
  name           = var.bridge_name
  vlan_filtering = true
  comment        = "Home network bridge"
}