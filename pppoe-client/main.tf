resource "routeros_interface_pppoe_client" "this" {
  name                   = var.name
  interface              = var.interface
  user                   = var.user
  password               = var.password
  service_name           = var.service_name
  ac_name                = var.ac_name
  add_default_route      = var.add_default_route
  dial_on_demand         = var.dial_on_demand
  disabled               = var.disabled
  keepalive_timeout      = var.keepalive_timeout
  max_mtu                = var.max_mtu
  max_mru                = var.max_mru
  mrru                   = var.mrru
  default_route_distance = var.default_route_distance
  use_peer_dns           = var.use_peer_dns
  profile                = var.profile
  comment                = var.comment
}