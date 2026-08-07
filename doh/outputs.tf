output "dns_config_id" {
  description = "Resource ID of the DNS configuration"
  value       = routeros_ip_dns.doh.id
}