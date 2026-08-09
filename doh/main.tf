locals {
  dns_servers = coalesce(var.servers, var.doh_upstream_addresses)
}

resource "routeros_ip_dns" "doh" {
  allow_remote_requests = var.allow_remote_requests
  use_doh_server        = var.doh_upstream_url
  servers               = local.dns_servers
  verify_doh_cert       = var.verify_doh_cert
  cache_max_ttl         = var.cache_max_ttl
  cache_size            = var.cache_size
  doh_max_concurrent_queries = var.doh_max_concurrent_queries
  doh_max_server_connections = var.doh_max_server_connections
  doh_timeout           = var.doh_timeout
  max_concurrent_queries = var.max_concurrent_queries
  max_concurrent_tcp_sessions = var.max_concurrent_tcp_sessions
  max_udp_packet_size   = var.max_udp_packet_size
  query_server_timeout    = var.query_server_timeout
  query_total_timeout     = var.query_total_timeout

  lifecycle {
    ignore_changes = [
      cache_used,
      dynamic_servers,
    ]
  }
}

output "dns_config_id" {
  description = "Resource ID of the DNS configuration"
  value       = routeros_ip_dns.doh.id
}