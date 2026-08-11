output "port_name" {
  description = "Nome da porta na ponte"
  value       = var.port_name
}

output "bridge" {
  description = "Nome da ponte"
  value       = var.bridge_name
}

output "id" {
  description = "ID do recurso da porta da ponte"
  value       = routeros_interface_bridge_port.this.id
}