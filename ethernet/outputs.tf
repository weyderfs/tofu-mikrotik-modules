output "port_name" {
  description = "Nome da porta (after rename)"
  value       = var.port_name
}

output "id" {
  description = "ID do recurso da interface Ethernet"
  value       = routeros_interface_ethernet.ethernet.id
}

output "factory_name" {
  description = "Nome do hardware original da porta"
  value       = var.factory_name
}