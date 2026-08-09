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

variable "server_ports" {
  description = "Map of service names to port numbers"
  type        = map(string)
  default     = {}
}

variable "dns_ports" {
  description = "DNS ports to use (default: 53)"
  type        = list(string)
  default     = ["53"]
}

variable "icmp_accept" {
  description = "Accept ICMP on bridge/LAN interface"
  type        = bool
  default     = true
}

variable "forward_default_drop" {
  description = "Default forward policy is drop"
  type        = bool
  default     = true
}