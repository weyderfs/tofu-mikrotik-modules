resource "routeros_ip_dns" "doh" {
  allow_remote_requests = true
  use_doh_server        = var.doh_upstream_url
  servers               = var.doh_upstream_addresses
}

locals {
  _ = var.doh_upstream_url  # ensure variable is used
}