resource "routeros_ip_pool" "this" {
  name    = "pool-${var.vlan_name}"
  ranges  = var.dhcp_range
  comment = "DHCP pool for ${var.vlan_name}"
}

resource "routeros_ip_dhcp_server" "this" {
  name         = "dhcp-${var.vlan_name}"
  interface    = var.vlan_interface
  address_pool = routeros_ip_pool.this.name
  lease_time   = var.lease_time
  disabled     = false
  comment      = "DHCP server for ${var.vlan_name}"
}

resource "routeros_ip_dhcp_server_network" "this" {
  address    = var.vlan_subnet
  gateway    = var.gateway
  dns_server = join(",", var.dns_servers)
  comment    = "DHCP network for ${var.vlan_name}"
}