resource "routeros_interface_vlan" "this" {
  name                       = var.vlan_name
  vlan_id                    = var.vlan_id
  interface                  = var.bridge_name
  comment                    = var.comment
  disabled                   = var.disabled
  arp                        = var.arp
  arp_timeout                = var.arp_timeout
  loop_protect               = var.loop_protect
  loop_protect_disable_time  = var.loop_protect_disable_time
  loop_protect_send_interval = var.loop_protect_send_interval
  mtu                        = var.mtu
  hw_offloaded               = var.hw_offloaded
  mvrp                       = var.mvrp
  use_service_tag            = var.use_service_tag
}
