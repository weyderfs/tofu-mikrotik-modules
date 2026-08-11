variable "bridge_name" {
  description = "Nome da ponte para anexar a porta"
  type        = string
}

variable "port_name" {
  description = "Nome da porta física (ex: ether2)"
  type        = string
}

variable "pvid" {
  description = "ID da VLAN primária para tráfego não taggeado"
  type        = number
  default     = 1
}

variable "comment" {
  description = "Comentário para a porta da ponte"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Desativar a porta da ponte"
  type        = bool
  default     = false
}

variable "auto_isolate" {
  description = "Prevenir encaminhamento sem BPDUs"
  type        = bool
  default     = null
}

variable "bpdu_guard" {
  description = "Habilitar proteção BPDU"
  type        = bool
  default     = null
}

variable "broadcast_flood" {
  description = "Habilitar broadcast flood para portas de saída"
  type        = bool
  default     = null
}

variable "edge" {
  description = "Modo de porta edge: yes, no, auto-discover"
  type        = string
  default     = null
}

variable "fast_leave" {
  description = "Habilitar IGMP fast leave"
  type        = bool
  default     = null
}

variable "frame_types" {
  description = "Tipos de frame permitidos para ingresso"
  type        = string
  default     = null
}

variable "horizon" {
  description = "Valor de split horizon bridging"
  type        = string
  default     = null
}

variable "hw" {
  description = "Habilitar hardware offloading"
  type        = bool
  default     = null
}

variable "ingress_filtering" {
  description = "Habilitar filtragem de ingresso VLAN"
  type        = bool
  default     = null
}

variable "internal_path_cost" {
  description = "Custo de caminho interno MSTI0"
  type        = number
  default     = null
}

variable "learn" {
  description = "Comportamento de aprendizado MAC"
  type        = string
  default     = null
}

variable "multicast_router" {
  description = "Configuração de roteador multicast IGMP"
  type        = string
  default     = null
}

variable "mvrp_applicant_state" {
  description = "Opções de estado de solicitante MVRP"
  type        = string
  default     = null
}

variable "mvrp_registrar_state" {
  description = "Opções de estado de registrador MVRP"
  type        = string
  default     = null
}

variable "path_cost" {
  description = "Custo de caminho para STP/MSTP"
  type        = string
  default     = null
}

variable "point_to_point" {
  description = "Configuração de link ponto-a-ponto"
  type        = string
  default     = null
}

variable "priority" {
  description = "Prioridade da interface para STP/MSTP"
  type        = string
  default     = null
}

variable "restricted_role" {
  description = "Habilitar restricted role"
  type        = bool
  default     = null
}

variable "restricted_tcn" {
  description = "Desativar notificações de mudança de topologia"
  type        = bool
  default     = null
}

variable "tag_stacking" {
  description = "Forçar re-tagging de pacotes não taggeados"
  type        = bool
  default     = null
}

variable "trusted" {
  description = "Permitir pacotes DHCP de portas não confiáveis"
  type        = bool
  default     = null
}

variable "unknown_multicast_flood" {
  description = "Habilitar unknown multicast flood"
  type        = bool
  default     = null
}

variable "unknown_unicast_flood" {
  description = "Habilitar unknown unicast flood"
  type        = bool
  default     = null
}