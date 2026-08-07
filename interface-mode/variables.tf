variable "port_name" {
  description = "Physical port name (e.g. ether2)"
  type        = string
}

variable "bridge_name" {
  description = "Bridge name to attach the port to"
  type        = string
}

variable "pvid" {
  description = "Primary VLAN ID for untagged ingress traffic. Used as access VLAN for access ports."
  type        = number
  default     = 1
}

variable "tagged_vlans" {
  description = "List of VLAN IDs allowed as tagged on this trunk port. Empty list means access port."
  type        = list(number)
  default     = []
}