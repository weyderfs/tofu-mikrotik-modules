resource "routeros_interface_ethernet" "ethernet" {
  factory_name = var.factory_name
  name         = var.port_name
  comment      = var.comment
  poe_out      = var.poe_out
  poe_priority = var.poe_priority
  disabled     = var.disabled
}