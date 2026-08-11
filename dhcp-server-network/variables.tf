variable "vlan_subnet" {
  description = "SubRede em notação CIDR (ex: [IP_ADDRESS]/25)"
  type        = string
}

variable "gateway" {
  description = "IP do gateway padrão"
  type        = string
}

variable "dns_servers" {
  description = "Lista de servidores DNS a serem passados via DHCP"
  type        = list(string)
  default     = []
}

variable "comment" {
  description = "Comentário para a rede DHCP"
  type        = string
  default     = null
}

variable "boot_file_name" {
  description = "Nome do arquivo de boot para DHCP"
  type        = string
  default     = null
}

variable "caps_manager" {
  description = "Endereços do gerenciador CAPsMAN"
  type        = list(string)
  default     = null
}

variable "dhcp_option" {
  description = "Opções DHCP adicionais"
  type        = list(string)
  default     = null
}

variable "dhcp_option_set" {
  description = "Conjunto de opções DHCP personalizado"
  type        = string
  default     = null
}

variable "dns_none" {
  description = "Não passar servidores DNS dinâmicos"
  type        = bool
  default     = null
}

variable "domain" {
  description = "Domínio DNS para clientes DHCP"
  type        = string
  default     = null
}

variable "netmask" {
  description = "Máscara de rede para clientes DHCP"
  type        = number
  default     = null
}

variable "next_server" {
  description = "Servidor Bootstrap"
  type        = string
  default     = null
}

variable "ntp_none" {
  description = "Não passar servidores NTP"
  type        = bool
  default     = null
}

variable "ntp_servers" {
  description = "Servidores NTP para clientes DHCP"
  type        = list(string)
  default     = null
}

variable "wins_servers" {
  description = "Servidores WINS para clientes DHCP"
  type        = list(string)
  default     = null
}