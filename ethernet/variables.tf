variable "factory_name" {
  description = "Identificador de hardware da porta física (ex: ether2)"
  type        = string
}

variable "port_name" {
  description = "Nome da porta após eventuais renomes"
  type        = string
}

variable "comment" {
  description = "Comentário para a interface Ethernet"
  type        = string
  default     = null
}

variable "poe_out" {
  description = "Modo de saída PoE: off, auto-on, forced-on"
  type        = string
  default     = null
}

variable "poe_priority" {
  description = "Prioridade PoE (0-99, menor = maior prioridade)"
  type        = number
  default     = null
}

variable "disabled" {
  description = "Desativar a interface Ethernet"
  type        = bool
  default     = false
}