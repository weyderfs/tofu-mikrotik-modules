output "filter_rules" {
  description = "Mapa de regras de filtro criadas"
  value       = { for k, v in routeros_ip_firewall_filter.this : k => v.id }
}