output "pool_name" {
  description = "Nome do pool de IP"
  value       = routeros_ip_pool.this.name
}

output "id" {
  description = "ID do pool IP"
  value       = routeros_ip_pool.this.id
}

output "ranges" {
  description = "Faixas de IP configuradas"
  value       = routeros_ip_pool.this.ranges
}