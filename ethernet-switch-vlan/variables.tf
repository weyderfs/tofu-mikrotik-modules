variable "switch" {
  description = "Nome do switch chip (ex: switch1)"
  type        = string
}

variable "vlan_id" {
  description = "ID da VLAN para a entrada da tabela do switch"
  type        = number
}

variable "ports" {
  description = "Lista de portas membro para a VLAN (incluir switch1-cpu para acesso ao CPU)"
  type        = list(string)
}

variable "comment" {
  description = "Comentário para a entrada da tabela VLAN do switch"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Desativar a entrada da tabela VLAN"
  type        = bool
  default     = null
}

variable "independent_learning" {
  description = "Usar Independent VLAN Learning (IVL) ao invés de Shared (SVL)"
  type        = bool
  default     = null
}