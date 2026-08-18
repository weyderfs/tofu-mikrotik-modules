variable "name" {
  description = "Nome da interface PPPoE (ex: pppoe-vivo)"
  type        = string
}

variable "interface" {
  description = "Interface física de uplink (ex: ether1-wow)"
  type        = string
}

variable "user" {
  description = "Usuário PPPoE fornecido pelo provedor"
  type        = string
}

variable "password" {
  description = "Senha PPPoE do provedor"
  type        = string
  sensitive   = true
}

variable "service_name" {
  description = "Nome do serviço PPPoE (obrigatório em alguns provedores, ex: Vivo)"
  type        = string
  default     = null
}

variable "ac_name" {
  description = "Nome do access concentrator (geralmente opcional)"
  type        = string
  default     = null
}

variable "add_default_route" {
  description = "'yes' adiciona rota default via gateway remoto; 'no'/'force' também válidos"
  type        = string
  default     = "yes"
}

variable "dial_on_demand" {
  description = "Estabelece conexão somente quando houver tráfego"
  type        = bool
  default     = false
}

variable "disabled" {
  description = "Desativar o cliente PPPoE"
  type        = bool
  default     = false
}

variable "keepalive_timeout" {
  description = "Timeout do keepalive em segundos (inteiro ou 'disabled')"
  type        = number
  default     = null
}

variable "max_mtu" {
  description = "MTU máximo negociável (ex: '1492' ou 'auto')"
  type        = string
  default     = null
}

variable "max_mru" {
  description = "MRU máximo negociável (ex: '1492' ou 'auto')"
  type        = string
  default     = null
}

variable "mrru" {
  description = "Tamanho máximo de pacote para MLPPP (número ou 'disabled')"
  type        = string
  default     = null
}

variable "default_route_distance" {
  description = "Distância da rota default criada pelo add_default_route"
  type        = number
  default     = null
}

variable "use_peer_dns" {
  description = "Usar DNS fornecido pelo peer PPPoE (recomendado false quando DNS local/DoH configurado)"
  type        = bool
  default     = false
}

variable "profile" {
  description = "Perfil PPP a ser usado pela interface"
  type        = string
  default     = null
}

variable "comment" {
  description = "Comentário para a interface PPPoE"
  type        = string
  default     = null
}