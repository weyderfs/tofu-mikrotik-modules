variable "server_name" {
  description = "Nome do servidor DHCP"
  type        = string
}

variable "interface" {
  description = "Interface VLAN para binding do DHCP server"
  type        = string
}

variable "address_pool" {
  description = "Nome do pool de IP a ser usado"
  type        = string
}

variable "lease_time" {
  description = "Tempo de lease DHCP no formato dd:hh:mm:ss"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Desativar o servidor DHCP"
  type        = bool
  default     = false
}

variable "comment" {
  description = "Comentário para o servidor DHCP"
  type        = string
  default     = null
}

variable "add_arp" {
  description = "Adicionar entrada ARP dinâmica"
  type        = bool
  default     = null
}

variable "address_lists" {
  description = "Lista de endereços para IPs atribuídos"
  type        = list(string)
  default     = null
}

variable "allow_dual_stack_queue" {
  description = "Criar única fila para IPv4 e IPv6"
  type        = bool
  default     = null
}

variable "always_broadcast" {
  description = "Sempre enviar replies como broadcast"
  type        = bool
  default     = null
}

variable "authoritative" {
  description = "Configuração de resposta autoritativa DHCP"
  type        = string
  default     = null
}

variable "bootp_lease_time" {
  description = "Tempo de lease BOOTP"
  type        = string
  default     = null
}

variable "bootp_support" {
  description = "Suporte cliente BOOTP"
  type        = string
  default     = null
}

variable "client_mac_limit" {
  description = "Limite de clientes por MAC"
  type        = number
  default     = null
}

variable "conflict_detection" {
  description = "Habilitar detecção de conflito"
  type        = bool
  default     = null
}

variable "delay_threshold" {
  description = "Delay threshold para pacotes DHCP"
  type        = string
  default     = null
}

variable "dhcp_option_set" {
  description = "Conjunto de opções DHCP personalizado"
  type        = string
  default     = null
}

variable "dynamic_lease_identifiers" {
  description = "Identificador de lease dinâmico"
  type        = string
  default     = null
}

variable "insert_queue_before" {
  description = "Inserir fila dinâmica antes desta configuração"
  type        = string
  default     = null
}

variable "lease_script" {
  description = "Script a ser executado após atribuição de lease"
  type        = string
  default     = null
}

variable "parent_queue" {
  description = "Fila pai para entradas dinâmicas"
  type        = string
  default     = null
}

variable "relay" {
  description = "Endereço IP de relay DHCP"
  type        = string
  default     = null
}

variable "src_address" {
  description = "Endereço de source para requisições DHCP"
  type        = string
  default     = null
}

variable "support_broadband_tr101" {
  description = "Suporte broadband TR101"
  type        = bool
  default     = null
}

variable "use_framed_as_classless" {
  description = "Encaminhar rotas RADIUS framed como classless"
  type        = bool
  default     = null
}

variable "use_radius" {
  description = "Usar servidor RADIUS"
  type        = string
  default     = null
}

variable "use_reconfigure" {
  description = "Permitir mensagens reconfigure"
  type        = bool
  default     = null
}