variable "bridge_name" {
  description = "Name of the bridge interface"
  type        = string
}

variable "vlan_filtering" {
  description = "Enable VLAN filtering on the bridge"
  type        = bool
  default     = true
}

variable "comment" {
  description = "Comment for the bridge interface"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable the bridge interface"
  type        = bool
  default     = false
}

variable "admin_mac" {
  description = "Static MAC address for the bridge (requires auto_mac = false)"
  type        = string
  default     = null
}

variable "auto_mac" {
  description = "Automatically select MAC address from bridge ports"
  type        = bool
  default     = true
}

variable "ageing_time" {
  description = "How long to keep host info in bridge database"
  type        = string
  default     = null
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

variable "dhcp_snooping" {
  description = "Enable DHCP snooping"
  type        = bool
  default     = null
}

variable "fast_forward" {
  description = "Enable fast forward"
  type        = bool
  default     = null
}

variable "forward_delay" {
  description = "Forward delay during bridge initialization"
  type        = string
  default     = null
}

variable "frame_types" {
  description = "Allowed frame types on bridge"
  type        = string
  default     = null
}

variable "igmp_snooping" {
  description = "Enable IGMP snooping"
  type        = bool
  default     = null
}

variable "igmp_version" {
  description = "IGMP version for queries"
  type        = number
  default     = null
}

variable "ingress_filtering" {
  description = "Enable VLAN ingress filtering"
  type        = bool
  default     = null
}

variable "last_member_interval" {
  description = "IGMP last member interval"
  type        = string
  default     = null
}

variable "last_member_query_count" {
  description = "IGMP last member query count"
  type        = number
  default     = null
}

variable "max_hops" {
  description = "Bridge count which BPDU can pass in MSTP network"
  type        = number
  default     = null
}

variable "max_learned_entries" {
  description = "Maximum learning entries"
  type        = string
  default     = null
}

variable "max_message_age" {
  description = "Max Age in BPDU packets (6s..40s)"
  type        = string
  default     = null
}

variable "membership_interval" {
  description = "IGMP membership interval"
  type        = string
  default     = null
}

variable "mtu" {
  description = "MTU for the bridge interface"
  type        = number
  default     = null
}

variable "multicast_querier" {
  description = "Enable multicast querier"
  type        = bool
  default     = null
}

variable "multicast_router" {
  description = "Multicast router port setting"
  type        = string
  default     = null
}

variable "mvrp" {
  description = "Enable MVRP (RouterOS 7.15+)"
  type        = bool
  default     = null
}

variable "port_cost_mode" {
  description = "Port path cost mode"
  type        = string
  default     = null
}

variable "priority" {
  description = "Bridge priority for STP/MSTP"
  type        = string
  default     = null
}

variable "protocol_mode" {
  description = "Spanning tree protocol: none, stp, rstp, mstp"
  type        = string
  default     = null
}

variable "querier_interval" {
  description = "IGMP querier interval"
  type        = string
  default     = null
}

variable "query_interval" {
  description = "IGMP query interval"
  type        = string
  default     = null
}

variable "query_response_interval" {
  description = "IGMP query response interval"
  type        = string
  default     = null
}

variable "region_name" {
  description = "MSTP region name"
  type        = string
  default     = null
}

variable "region_revision" {
  description = "MSTP region revision number"
  type        = number
  default     = null
}

variable "startup_query_count" {
  description = "Number of startup queries"
  type        = number
  default     = null
}

variable "startup_query_interval" {
  description = "Startup query interval"
  type        = string
  default     = null
}

variable "transmit_hold_count" {
  description = "Transmit hold count"
  type        = number
  default     = null
}