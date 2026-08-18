variable "enabled" {
  description = "Habilita o cliente NTP"
  type        = bool
  default     = true
}

variable "mode" {
  description = "Modo do cliente NTP (broadcast, manycast, multicast, unicast)"
  type        = string
  default     = "unicast"
  validation {
    condition     = contains(["broadcast", "manycast", "multicast", "unicast"], var.mode)
    error_message = "mode deve ser broadcast, manycast, multicast ou unicast."
  }
}

variable "servers" {
  description = "Lista de servidores NTP (FQDN, IPv4 ou IPv4@vrf)"
  type        = set(string)
}

variable "vrf" {
  description = "VRF em que o cliente NTP opera"
  type        = string
  default     = null
}