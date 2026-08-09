output "filter_rules" {
  description = "Firewall filter rules created"
  value       = routeros_ip_firewall_filter.this
}

output "nat_rules" {
  description = "Firewall NAT rules created"
  value       = routeros_ip_firewall_nat.this
}
