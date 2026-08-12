resource "routeros_interface_ethernet_switch_vlan" "this" {
  switch               = var.switch
  vlan_id              = var.vlan_id
  ports                = var.ports
  comment              = var.comment
  disabled             = var.disabled
  independent_learning = var.independent_learning
}