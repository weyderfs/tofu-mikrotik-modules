resource "routeros_ip_firewall_filter" "input_established" {
  chain            = "input"
  action           = "accept"
  connection_state = "established,related"
  comment          = "Accept established and related input"
}

resource "routeros_ip_firewall_filter" "input_icmp" {
  chain      = "input"
  action     = "accept"
  protocol   = "icmp"
  comment    = "Accept ICMP input"
  disabled   = var.icmp_accept ? false : null
}

resource "routeros_ip_firewall_filter" "input_drop_wan" {
  chain        = "input"
  action       = "drop"
  in_interface = var.wan_interface
  comment      = "Drop all WAN input"
}

resource "routeros_ip_firewall_filter" "input_accept_lan" {
  chain        = "input"
  action       = "accept"
  in_interface = var.bridge_name
  comment      = "Accept LAN management input"
}

# === forward chain ===

resource "routeros_ip_firewall_filter" "forward_established" {
  chain            = "forward"
  action           = "accept"
  connection_state = "established,related"
  comment          = "Accept established and related forward"
}

# Block Guest to internal VLANs

resource "routeros_ip_firewall_filter" "drop_guest_to_iot" {
  chain       = "forward"
  action      = "drop"
  src_address = var.guest_subnet
  dst_address = var.iot_subnet
  comment     = "Drop Guest -> IoT"
}

resource "routeros_ip_firewall_filter" "drop_guest_to_lan" {
  chain       = "forward"
  action      = "drop"
  src_address = var.guest_subnet
  dst_address = var.lan_subnet
  comment     = "Drop Guest -> LAN"
}

# Block IoT to LAN (exceptions follow below)

resource "routeros_ip_firewall_filter" "drop_iot_to_lan" {
  chain       = "forward"
  action      = "drop"
  src_address = var.iot_subnet
  dst_address = var.lan_subnet
  comment     = "Drop IoT -> LAN (exceptions below)"
}

# IoT-to-LAN exceptions (Home Assistant + AdGuard DNS)

resource "routeros_ip_firewall_filter" "iot_ha" {
  chain       = "forward"
  action      = "accept"
  src_address = var.iot_subnet
  dst_address = var.server_ip
  protocol    = "tcp"
    dst_port    = lookup(var.server_ports, "ha", "8123")
  comment     = "Allow IoT -> Home Assistant"
}

resource "routeros_ip_firewall_filter" "iot_dns_udp" {
  chain       = "forward"
  action      = "accept"
  src_address = var.iot_subnet
  dst_address = var.server_ip
  protocol    = "udp"
    dst_port    = lookup(var.dns_ports, "udp", "53")
  comment     = "Allow IoT -> DNS (UDP)"
}

resource "routeros_ip_firewall_filter" "iot_dns_tcp" {
  chain       = "forward"
  action      = "accept"
  src_address = var.iot_subnet
  dst_address = var.server_ip
  protocol    = "tcp"
    dst_port    = lookup(var.dns_ports, "tcp", "53")
  comment     = "Allow IoT -> DNS (TCP)"
}

# Block LAN to IoT and Guest

resource "routeros_ip_firewall_filter" "drop_lan_to_iot" {
  chain       = "forward"
  action      = "drop"
  src_address = var.lan_subnet
  dst_address = var.iot_subnet
  comment     = "Drop LAN -> IoT"
}

resource "routeros_ip_firewall_filter" "drop_lan_to_guest" {
  chain       = "forward"
  action      = "drop"
  src_address = var.lan_subnet
  dst_address = var.guest_subnet
  comment     = "Drop LAN -> Guest"
}

# Allow VLAN traffic to WAN

resource "routeros_ip_firewall_filter" "forward_iot_wan" {
  chain         = "forward"
  action        = "accept"
  src_address   = var.iot_subnet
  out_interface = var.wan_interface
  comment       = "Allow IoT -> WAN"
}

resource "routeros_ip_firewall_filter" "forward_lan_wan" {
  chain         = "forward"
  action        = "accept"
  src_address   = var.lan_subnet
  out_interface = var.wan_interface
  comment       = "Allow LAN -> WAN"
}

resource "routeros_ip_firewall_filter" "forward_guest_wan" {
  chain         = "forward"
  action        = "accept"
  src_address   = var.guest_subnet
  out_interface = var.wan_interface
  comment       = "Allow Guest -> WAN"
}

# Final catch-all drop

resource "routeros_ip_firewall_filter" "forward_drop_all" {
  chain  = "forward"
  action = "drop"
  comment = "Drop all remaining forward traffic"
}

# === NAT ===

resource "routeros_ip_firewall_nat" "masquerade_iot" {
  chain         = "srcnat"
  action        = "masquerade"
  src_address   = var.iot_subnet
  out_interface = var.wan_interface
  comment       = "NAT masquerade IoT"
}

resource "routeros_ip_firewall_nat" "masquerade_lan" {
  chain         = "srcnat"
  action        = "masquerade"
  src_address   = var.lan_subnet
  out_interface = var.wan_interface
  comment       = "NAT masquerade LAN"
}

resource "routeros_ip_firewall_nat" "masquerade_guest" {
  chain         = "srcnat"
  action        = "masquerade"
  src_address   = var.guest_subnet
  out_interface = var.wan_interface
  comment       = "NAT masquerade Guest"
}