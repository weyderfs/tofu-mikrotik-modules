resource "routeros_interface_ethernet_switch_port" "this" {
  name            = var.port_name
  vlan_mode       = var.vlan_mode
  vlan_header     = var.vlan_header
  default_vlan_id = var.default_vlan_id
}