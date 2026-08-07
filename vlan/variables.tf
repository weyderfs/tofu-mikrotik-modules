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