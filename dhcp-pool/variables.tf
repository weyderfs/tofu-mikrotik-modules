variable "pool_name" {
  description = "Nome do pool de IP"
  type        = string
}

variable "ranges" {
  description = "Faixa de IP no formato 'IP-IP' (ex: 192.168.1.100-192.168.1.200')"
  type        = string
}

variable "comment" {
  description = "Comentário para o pool"
  type        = string
  default     = null
}

variable "next_pool" {
  description = "Pool de IP de fallback quando este estiver esgotado"
  type        = string
  default     = null
}