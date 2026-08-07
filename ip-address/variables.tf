variable "vlan_interface" {
  description = "VLAN interface name to assign the IP to"
  type        = string
}

variable "address" {
  description = "IP address with network prefix (e.g. [IP_ADDRESS]/25)"
  type        = string
}

variable "network" {
  description = "Network address (e.g. [IP_ADDRESS])"
  type        = string
}