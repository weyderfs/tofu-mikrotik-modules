variable "port_name" {
  description = "Physical port name (e.g. ether2)"
  type        = string
}

variable "bridge_name" {
  description = "Bridge name to attach the port to"
  type        = string
}

variable "pvid" {
  description = "Primary VLAN ID for untagged ingress traffic"
  type        = number
  default     = 1
}

variable "comment" {
  description = "Comment for the bridge port"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable the bridge port"
  type        = bool
  default     = false
}

variable "auto_isolate" {
  description = "Prevent port from forwarding without BPDUs"
  type        = bool
  default     = null
}

variable "bpdu_guard" {
  description = "Enable BPDU guard"
  type        = bool
  default     = null
}

variable "broadcast_flood" {
  description = "Enable broadcast flood to all egress ports"
  type        = bool
  default     = null
}

variable "edge" {
  description = "Set port as edge, non-edge, or enable edge discovery"
  type        = string
  default     = null
}

variable "fast_leave" {
  description = "Enable IGMP fast leave"
  type        = bool
  default     = null
}

variable "frame_types" {
  description = "Allowed ingress frame types"
  type        = string
  default     = null
}

variable "horizon" {
  description = "Split horizon bridging value"
  type        = string
  default     = null
}

variable "hw" {
  description = "Enable hardware offloading"
  type        = bool
  default     = null
}

variable "ingress_filtering" {
  description = "Enable VLAN ingress filtering"
  type        = bool
  default     = null
}

variable "internal_path_cost" {
  description = "MSTI0 internal path cost"
  type        = number
  default     = null
}

variable "learn" {
  description = "MAC learning behavior"
  type        = string
  default     = null
}

variable "multicast_router" {
  description = "IGMP membership report forwarding setting"
  type        = string
  default     = null
}

variable "mvrp_applicant_state" {
  description = "MVRP applicant options"
  type        = string
  default     = null
}

variable "mvrp_registrar_state" {
  description = "MVRP registrar options"
  type        = string
  default     = null
}

variable "path_cost" {
  description = "Path cost for STP/MSTP"
  type        = string
  default     = null
}

variable "point_to_point" {
  description = "Point-to-point link setting"
  type        = string
  default     = null
}

variable "priority" {
  description = "Interface priority for STP/MSTP"
  type        = string
  default     = null
}

variable "restricted_role" {
  description = "Enable restricted role"
  type        = bool
  default     = null
}

variable "restricted_tcn" {
  description = "Disable topology change notifications"
  type        = bool
  default     = null
}

variable "tag_stacking" {
  description = "Force untagged packets to be retagged"
  type        = bool
  default     = null
}

variable "trusted" {
  description = "Allow DHCP packets from untrusted ports"
  type        = bool
  default     = null
}

variable "unknown_multicast_flood" {
  description = "Enable unknown multicast flood"
  type        = bool
  default     = null
}

variable "unknown_unicast_flood" {
  description = "Enable unknown unicast flood"
  type        = bool
  default     = null
}

variable "factory_name" {
  description = "Factory identifier of the physical port (e.g. ether2)"
  type        = string
}

variable "ethernet_comment" {
  description = "Comment for the ethernet interface"
  type        = string
  default     = null
}

variable "poe_out" {
  description = "PoE output mode: off, auto-on, forced-on"
  type        = string
  default     = null
}

variable "poe_priority" {
  description = "PoE priority (lower number = higher priority)"
  type        = number
  default     = null
}