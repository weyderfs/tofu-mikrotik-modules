variable "bridge_name" {
  description = "Bridge interface name for this VLAN membership entry"
  type        = string
}

variable "vlan_ids" {
  description = "VLAN IDs (set of strings; ranges allowed e.g. 100-115)"
  type        = set(string)
}

variable "tagged" {
  description = "Interfaces that egress with VLAN tag (include bridge for CPU)"
  type        = set(string)
  default     = null
}

variable "untagged" {
  description = "Interfaces that egress without VLAN tag (access ports)"
  type        = set(string)
  default     = null
}

variable "comment" {
  description = "Comment for the bridge VLAN entry"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable this bridge VLAN entry"
  type        = bool
  default     = null
}

variable "mvrp_forbidden" {
  description = "Ports that ignore MRP for these VLAN IDs (RouterOS 7.15+)"
  type        = list(string)
  default     = null
}
