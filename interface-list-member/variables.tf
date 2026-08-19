variable "interface" {
  description = "Nome da interface que será membro da lista"
  type        = string
}

variable "list" {
  description = "Nome da lista de interfaces (ex.: WAN, LAN)"
  type        = string
}

variable "comment" {
  description = "Comentário descritivo do membro"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Desabilita o membro sem removê-lo da lista"
  type        = bool
  default     = false
}