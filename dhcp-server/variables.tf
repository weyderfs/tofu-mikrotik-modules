variable "vlan_name" {
  description = "Descriptive VLAN name for DHCP naming"
  type        = string
}

variable "vlan_interface" {
  description = "VLAN interface name to bind DHCP server to"
  type        = string
}

variable "vlan_subnet" {
  description = "Subnet in CIDR notation (e.g. [IP_ADDRESS]/25)"
  type        = string
}

variable "dhcp_range" {
  description = "DHCP IP range (e.g. [IP_ADDRESS]-[IP_ADDRESS])"
  type        = string
}

variable "gateway" {
  description = "Default gateway IP for this VLAN"
  type        = string
}

variable "dns_servers" {
  description = "List of DNS server IPs handed out via DHCP"
  type        = list(string)
}

variable "lease_time" {
  description = "DHCP lease time in dd:hh:mm:ss format"
  type        = string
  default     = "1d 00:00:00"
}