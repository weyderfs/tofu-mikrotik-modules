output "nat_rules" {
  description = "Mapa de regras NAT criadas"
  value       = { for k, v in routeros_ip_firewall_nat.this : k => v.id }
}