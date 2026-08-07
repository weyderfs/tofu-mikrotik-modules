variable "doh_upstream_url" {
  description = "DoH upstream URL (e.g. https://dns.quad9.net/dns-query)"
  type        = string
  default     = "https://dns.quad9.net/dns-query"
}

variable "doh_upstream_addresses" {
  description = "Upstream DNS server IPs for fallback resolution"
  type        = list(string)
  default     = ["1.1.1.1", "9.9.9.9"]
}