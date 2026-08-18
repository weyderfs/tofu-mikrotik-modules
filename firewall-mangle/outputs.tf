output "ids" {
  description = "IDs das regras de mangle criadas"
  value = [
    for r in routeros_ip_firewall_mangle.this : r.id
  ]
}