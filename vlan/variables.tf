variable "vlan_id" {
  description = "802.1Q VLAN ID"
  type        = number
}

variable "vlan_name" {
  description = "Descriptive name for the VLAN"
  type        = string
}

variable "bridge_name" {
  description = "Parent bridge interface name"
  type        = string
}

variable "comment" {
  description = "Comment for the VLAN interface"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable the VLAN interface"
  type        = bool
  default     = false
}

variable "arp" {
  description = "ARP mode: disabled, enabled, local-proxy-arp, proxy-arp, reply-only"
  type        = string
  default     = null
}

variable "arp_timeout" {
  description = "ARP timeout (e.g., 30s, 5m, 1h)"
  type        = string
  default     = null
}

variable "mtu" {
  description = "MTU for the VLAN interface"
  type        = number
  default     = null
}

variable "hw_offloaded" {
  description = "Hardware offload for VLAN interface"
  type        = bool
  default     = null
}

variable "mvrp" {
  description = "Enable MVRP (RouterOS 7.15+)"
  type        = bool
  default     = null
}

variable "use_service_tag" {
  description = "Use service tag for VLAN registration"
  type        = bool
  default     = null
}