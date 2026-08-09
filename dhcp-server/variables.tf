variable "vlan_interface" {
  description = "VLAN interface name to bind DHCP server to"
  type        = string
}

variable "vlan_subnet" {
  description = "Subnet in CIDR notation (e.g. [IP_ADDRESS]/25)"
  type        = string
}

variable "dhcp_range" {
  description = "DHCP IP range (e.g. [IP_ADDRESS]-[IP_ADDRESS])"
  type        = string
}

variable "gateway" {
  description = "Default gateway IP for this VLAN"
  type        = string
}

variable "next_pool" {
  description = "IP pool to use when this pool is exhausted (fallback)"
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "List of DNS server IPs handed out via DHCP"
  type        = list(string)
  default     = []
}

variable "lease_time" {
  description = "DHCP lease time in dd:hh:mm:ss format"
  type        = string
  default     = null
}

variable "pool_comment" {
  description = "Comment for the DHCP pool"
  type        = string
  default     = null
}

variable "dhcp_server_comment" {
  description = "Comment for the DHCP server"
  type        = string
  default     = null
}

variable "dhcp_network_comment" {
  description = "Comment for the DHCP server network"
  type        = string
  default     = null
}

variable "add_arp" {
  description = "Add dynamic ARP entry"
  type        = bool
  default     = null
}

variable "address_lists" {
  description = "Address list for assigned addresses"
  type        = list(string)
  default     = null
}

variable "allow_dual_stack_queue" {
  description = "Create single queue for both IPv4 and IPv6"
  type        = bool
  default     = null
}

variable "always_broadcast" {
  description = "Always send replies as broadcast"
  type        = bool
  default     = null
}

variable "authoritative" {
  description = "Authoritative DHCP response setting"
  type        = string
  default     = null
}

variable "bootp_lease_time" {
  description = "BOOTP lease time"
  type        = string
  default     = null
}

variable "bootp_support" {
  description = "BOOTP client support"
  type        = string
  default     = null
}

variable "client_mac_limit" {
  description = "Limit clients per MAC address"
  type        = number
  default     = null
}

variable "conflict_detection" {
  description = "Enable conflict detection"
  type        = bool
  default     = null
}

variable "delay_threshold" {
  description = "Delay threshold for DHCP packets"
  type        = string
  default     = null
}

variable "dhcp_option_set" {
  description = "Custom DHCP options set"
  type        = string
  default     = null
}

variable "disabled" {
  description = "Disable DHCP server"
  type        = bool
  default     = false
}

variable "dynamic_lease_identifiers" {
  description = "Dynamic lease identifier"
  type        = string
  default     = null
}

variable "insert_queue_before" {
  description = "Insert dynamic queue before this setting"
  type        = string
  default     = null
}

variable "lease_script" {
  description = "Script to run after lease assignment"
  type        = string
  default     = null
}

variable "parent_queue" {
  description = "Parent queue for dynamic entries"
  type        = string
  default     = null
}

variable "relay" {
  description = "IP address of DHCP relay"
  type        = string
  default     = null
}

variable "src_address" {
  description = "Source address for DHCP requests"
  type        = string
  default     = null
}

variable "support_broadband_tr101" {
  description = "Support broadband TR101"
  type        = bool
  default     = null
}

variable "use_framed_as_classless" {
  description = "Forward RADIUS framed routes as classless route"
  type        = bool
  default     = null
}

variable "use_radius" {
  description = "Use RADIUS server"
  type        = string
  default     = null
}

variable "use_reconfigure" {
  description = "Allow reconfigure messages"
  type        = bool
  default     = null
}

variable "boot_file_name" {
  description = "Boot filename for DHCP"
  type        = string
  default     = null
}

variable "caps_manager" {
  description = "CAPsMAN manager addresses"
  type        = list(string)
  default     = null
}

variable "dhcp_option" {
  description = "Additional DHCP options"
  type        = list(string)
  default     = null
}

variable "dns_none" {
  description = "Don't pass dynamic DNS servers"
  type        = bool
  default     = null
}

variable "domain" {
  description = "DNS domain for DHCP clients"
  type        = string
  default     = null
}

variable "netmask" {
  description = "Network mask for DHCP clients"
  type        = number
  default     = null
}

variable "next_server" {
  description = "Next server for bootstrap"
  type        = string
  default     = null
}

variable "ntp_none" {
  description = "Don't pass NTP servers"
  type        = bool
  default     = null
}

variable "ntp_servers" {
  description = "NTP servers for DHCP clients"
  type        = list(string)
  default     = null
}

variable "wins_servers" {
  description = "WINS servers for DHCP clients"
  type        = list(string)
  default     = null
}

variable "pool_name" {
  description = "Name of the IP pool"
  type        = string
}

variable "server_name" {
  description = "Name of the DHCP server"
  type        = string
}

variable "dhcp_option_set" {
  description = "DHCP option set for the network"
  type        = string
  default     = null
}