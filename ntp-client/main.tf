resource "routeros_system_ntp_client" "this" {
  enabled = var.enabled
  mode    = var.mode
  servers = var.servers
  vrf     = var.vrf
}