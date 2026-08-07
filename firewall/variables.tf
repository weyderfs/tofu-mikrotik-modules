variable "wan_interface" {
  description = "WAN interface name (e.g. ether1)"
  type        = string
}

variable "bridge_name" {
  description = "Bridge interface name for LAN management access"
  type        = string
}

variable "iot_subnet" {
  description = "IoT VLAN subnet in CIDR notation"
  type        = string
}

variable "lan_subnet" {
  description = "LAN VLAN subnet in CIDR notation"
  type        = string
}

variable "guest_subnet" {
  description = "Guest VLAN subnet in CIDR notation"
  type        = string
}

variable "server_ip" {
  description = "Server IP on VLAN 20 (AdGuard Home, Home Assistant)"
  type        = string
}