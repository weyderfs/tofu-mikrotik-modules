resource "routeros_ip_dhcp_server_network" "this" {
  address         = var.vlan_subnet
  gateway         = var.gateway
  dns_server      = var.dns_servers
  comment         = var.comment
  boot_file_name  = var.boot_file_name
  caps_manager    = var.caps_manager
  dhcp_option     = var.dhcp_option
  dhcp_option_set = var.dhcp_option_set
  dns_none        = var.dns_none
  domain          = var.domain
  netmask         = var.netmask
  next_server     = var.next_server
  ntp_none        = var.ntp_none
  ntp_server      = var.ntp_servers
  wins_server     = var.wins_servers
}