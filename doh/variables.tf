variable "doh_upstream_url" {
  description = "DoH upstream URL (e.g., https://dns.quad9.net/dns-query)"
  type        = string
}

variable "doh_upstream_addresses" {
  description = "List of upstream DNS server IPs for fallback resolution"
  type        = list(string)
}

variable "allow_remote_requests" {
  description = "Allow remote DNS requests"
  type        = bool
  default     = true
}

variable "verify_doh_cert" {
  description = "Verify DoH certificate"
  type        = bool
  default     = null
}

variable "cache_max_ttl" {
  description = "Maximum cache TTL"
  type        = string
  default     = null
}

variable "cache_size" {
  description = "DNS cache size in KiB"
  type        = number
  default     = null
}

variable "doh_max_concurrent_queries" {
  description = "Max concurrent DoH queries"
  type        = number
  default     = null
}

variable "doh_max_server_connections" {
  description = "Max concurrent DoH connections"
  type        = number
  default     = null
}

variable "doh_timeout" {
  description = "DoH query timeout"
  type        = string
  default     = null
}

variable "max_concurrent_queries" {
  description = "Max concurrent DNS queries"
  type        = number
  default     = null
}

variable "max_concurrent_tcp_sessions" {
  description = "Max concurrent TCP sessions"
  type        = number
  default     = null
}

variable "max_udp_packet_size" {
  description = "Max UDP packet size"
  type        = number
  default     = null
}

variable "query_server_timeout" {
  description = "Query server timeout"
  type        = string
  default     = null
}

variable "query_total_timeout" {
  description = "Total query timeout"
  type        = string
  default     = null
}

variable "servers" {
  description = "List of DNS server IPs (fallback when DoH unavailable)"
  type        = list(string)
  default     = []
}

variable "address_list_extra_time" {
  description = "Extra time for address list DNS records"
  type        = string
  default     = null
}

variable "mdns_repeat_ifaces" {
  description = "Interfaces for mDNS repeater"
  type        = list(string)
  default     = null
}

variable "vrf" {
  description = "VRF table this DNS operates on"
  type        = string
  default     = null
}