variable "port_name" {
  description = "Nome da porta do switch (ex: ether2, switch1-cpu)"
  type        = string
}

variable "vlan_mode" {
  description = "Modo de consulta a tabela VLAN para ingresso: check, disabled, fallback, secure"
  type        = string
  default     = null
}

variable "vlan_header" {
  description = "Ação para tráfego de egresso: add-if-missing, always-strip, leave-as-is"
  type        = string
  default     = null
}

variable "default_vlan_id" {
  description = "ID da VLAN aplicado ao tráfego não taggeado de ingresso (access/hybrid)"
  type        = string
  default     = null
}

variable "l3_hw_offloading" {
  description = "Level 3 hardware offloading"
  type        = bool
  default     = null
}