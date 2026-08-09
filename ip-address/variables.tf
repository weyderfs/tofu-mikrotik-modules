variable "vlan_interface" {
  description = "VLAN interface name to assign the IP to"
  type        = string
}

variable "address" {
  description = "IP address with network prefix (e.g. 192.168.1.1/24)"
  type        = string
}

variable "network" {
  description = "Network address (e.g. 192.168.1.0). Auto-determined for /32, configurable for others"
  type        = string
  default     = null
}

variable "comment" {
  description = "Comment for the IP address"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable the IP address"
  type        = bool
  default     = false
}

variable "vrf" {
  description = "VRF table this IP address operates on"
  type        = string
  default     = null
}